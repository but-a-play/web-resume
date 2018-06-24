/**  
* @function 
* @author zhaozhou
* @date 2018年4月21日  
* @version 1.0  
*/
package resume.mybatis.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import resume.entity.SkillIcon;

public interface SkillDao extends BaseDao {

	List<SkillIcon> getSkillList();

	int insertSkillList(@Param("skillList") List<SkillIcon> skillList);

}
