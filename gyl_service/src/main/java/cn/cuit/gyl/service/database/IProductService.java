package cn.cuit.gyl.service.database;

import cn.cuit.gyl.domain.database.Product;

import java.util.List;

public interface IProductService {

    //查询所有的商品档案
    List<Product> findAll(Integer pageNum, Integer pageSize) throws Exception;

    //添加一个商品
    void save(Product product) throws Exception;

    //通过多个id删除多个商品信息
    void deleteByIds(String[] ids) throws Exception;

    //通过一个id删除一个商品信息
    void deleteById(String id) throws Exception;

    //根据id查询商品信息
    Product findById(String id) throws Exception;

    //根据id更新商品信息
    void updateById(Product product) throws Exception;
}
