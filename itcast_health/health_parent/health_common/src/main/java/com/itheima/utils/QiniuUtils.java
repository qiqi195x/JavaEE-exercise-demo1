package com.itheima.utils;

import com.google.gson.Gson;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.BucketManager;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.Region;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

/**
 * 七牛云工具类
 */
public class QiniuUtils {
    public static String accessKey = "Fv8bBkJMLHJ0QB-ZuHsvJ-zWq84Nxznjm-VNarQF";
    public static String secretKey = "e-_J6TJf03nzCLHXnQO3gFGyejifsM8coMdZAtyh";
    public static String bucket = "qiqi195x";

    public static void upload2Qiniu(String filePath,String fileName){
        //构造一个带指定Zone对象的配置类
        Region region = new Region.Builder()
                .region("z0")
                .accUpHost("up-cn-east-2.qiniup.com")
                .srcUpHost("up-cn-east-2.qiniup.com")
                .iovipHost("iovip.qbox.me")
                .rsHost("rs.qiniu.com")
                .rsfHost("rsf.qiniu.com")
                .apiHost("api.qiniu.com")
                .build();
        Configuration cfg = new Configuration(region);
        UploadManager uploadManager = new UploadManager(cfg);
        Auth auth = Auth.create(accessKey, secretKey);
        String upToken = auth.uploadToken(bucket);
        try {
            Response response = uploadManager.put(filePath, fileName, upToken);
            //解析上传成功的结果
            DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
        } catch (QiniuException ex) {
            Response r = ex.response;
            try {
                System.err.println(r.bodyString());
            } catch (QiniuException ex2) {
                //ignore
            }
        }
    }

    //上传文件
    public static void upload2Qiniu(byte[] bytes, String fileName){
        //构造一个带指定Zone对象的配置类
        Region region = new Region.Builder()
                .region("z0")
                .accUpHost("up-cn-east-2.qiniup.com")
                .srcUpHost("up-cn-east-2.qiniup.com")
                .iovipHost("iovip.qbox.me")
                .rsHost("rs.qiniu.com")
                .rsfHost("rsf.qiniu.com")
                .apiHost("api.qiniu.com")
                .build();
        Configuration cfg = new Configuration(region);
        //...其他参数参考类注释
        UploadManager uploadManager = new UploadManager(cfg);

        //默认不指定key的情况下，以文件内容的hash值作为文件名
        String key = fileName;
        Auth auth = Auth.create(accessKey, secretKey);
        String upToken = auth.uploadToken(bucket);
        try {
            Response response = uploadManager.put(bytes, key, upToken);
            //解析上传成功的结果
            DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
            System.out.println(putRet.key);
            System.out.println(putRet.hash);
        } catch (QiniuException ex) {
            Response r = ex.response;
            System.err.println(r.toString());
            try {
                System.err.println(r.bodyString());
            } catch (QiniuException ex2) {
                //ignore
            }
        }
    }

    //删除文件
    public static void deleteFileFromQiniu(String fileName){
        //构造一个带指定Zone对象的配置类
        Region region = new Region.Builder()
                .region("z0")
                .accUpHost("up-cn-east-2.qiniup.com")
                .srcUpHost("up-cn-east-2.qiniup.com")
                .iovipHost("iovip.qbox.me")
                .rsHost("rs.qiniu.com")
                .rsfHost("rsf.qiniu.com")
                .apiHost("api.qiniu.com")
                .build();
        Configuration cfg = new Configuration(region);
        String key = fileName;
        Auth auth = Auth.create(accessKey, secretKey);
        BucketManager bucketManager = new BucketManager(auth, cfg);
        try {
            bucketManager.delete(bucket, key);
        } catch (QiniuException ex) {
            //如果遇到异常，说明删除失败
            System.err.println(ex.code());
            System.err.println(ex.response.toString());
        }
    }
}
