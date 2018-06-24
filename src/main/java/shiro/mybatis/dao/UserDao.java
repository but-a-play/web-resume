package shiro.mybatis.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import shiro.entity.User;

public interface UserDao {

	
	void createUser(@Param("user")User user);

	void updateUser(@Param("user")User user);

	@Select("DELETE FROM t_user  WHERE id = #{id}")
	void deleteUser(@Param("id")Long userId);

	User findOne(@Param("id")Long userId);

	List<User> findAll();

	User findByUsername(@Param("username")String username);

}
