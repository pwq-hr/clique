package cn.cuit.gyl.dao.database;

import cn.cuit.gyl.domain.database.Product;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("iProductDao")
public interface IProductDao {

    //查询所有的商品档案
    @Select("select * from product")
    List<Product> findAll();

    //添加一个商品信息
    @Insert("insert into product values (#{id},#{name},#{type},#{num},#{unit},#{desc},#{rate},#{price})")
    void save(Product product);

    //根据一个id删除商品信息
    @Delete("delete from product where id = #{id}")
    void deleteById(String id);

    //根据id查询商品信息
    @Select("select * from product where id = #{id}")
    Product findById(String id);

    //根据id更新商品信息
    @Update("update product set name=#{name},type=#{type},num=#{num},unit=#{unit},price=#{price},rate=#{rate},product.`desc`=#{desc} where id=#{id}")
    void updateById(Product product);
}
