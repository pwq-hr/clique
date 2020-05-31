package cn.cuit.gyl.dao.database;

import cn.cuit.gyl.domain.database.UserInfo;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("iUserDao")
public interface IUserDao {

    //查询所有用户
    @Select("select * from user")
    List<UserInfo> findAll() throws Exception;

    //添加一个用户
    @Insert("insert into user (username,password,phone,email,status,sex) values (#{username},#{password},#{phone},#{email},#{status},#{sex})")
    void save(UserInfo userInfo);

    //通过id删除用户
    @Delete("delete from user where id = #{id}")
    void deleteById(Integer id);

    //根据id查询用户
    @Select("select * from user where id = #{id}")
    UserInfo findById(Integer id) throws Exception;

    //根据id更新用户
    @Update("update user set username=#{username},password=#{password},sex=#{sex},phone=#{phone},email=#{email},status=#{status} where id=#{id}")
    void updateById(UserInfo userInfo);
}
