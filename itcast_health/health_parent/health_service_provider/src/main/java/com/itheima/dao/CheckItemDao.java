package com.itheima.dao;
import com.github.pagehelper.Page;
import com.itheima.pojo.CheckItem;
/**
 * 持久层Dao接口
 */
public interface CheckItemDao {
    public void add(CheckItem checkItem);
    public Page<CheckItem> selectByCondition(String queryString);
    public long findCountByCheckItemId(Integer checkItemId);
    public void deleteById(Integer id);

}