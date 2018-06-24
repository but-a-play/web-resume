/**  
* @function 
* @author zhaozhou
* @date 2018年4月11日  
* @version 1.0  
*/
package resume.mybatis.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import resume.entity.HobbyIcon;

public interface HobbyDao extends BaseDao {

	/**
	 * @author zhaozhou
	 * @function
	 * @param
	 * @return
	 * @date 2018年4月20日
	 */
	List<HobbyIcon> getHobbyList();

	int insertHobbyList(@Param("hobbyList") List<HobbyIcon> hobbyList);

}
