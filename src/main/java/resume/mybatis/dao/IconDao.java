/**  
* @function 
* @author zhaozhou
* @date 2018年4月11日  
* @version 1.0  
*/  
package resume.mybatis.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import resume.entity.Icon;

public interface IconDao extends BaseDao {

	List<Icon> getIconList(@Param("desc")String desc);
	
}
