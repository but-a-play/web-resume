/**  
* @function 
* @author zhaozhou
* @date 2018年4月22日  
* @version 1.0  
*/
package resume.mybatis.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import resume.entity.PersonalTag;

public interface TagsDao extends BaseDao {

	List<PersonalTag> getTagList();

	int insertTagList(@Param("tagList") List<PersonalTag> tagList);

}
