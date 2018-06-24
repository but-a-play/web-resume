/**  
* @function 
* @author zhaozhou
* @date 2018年4月29日  
* @version 1.0  
*/
package resume.mybatis.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Select;
import resume.entity.Resume;

public interface ResumeDao extends BaseDao {

	Long insertResume(@Param("resume") Resume resume);

	void updateResume(@Param("resume") Resume resume);

	@Select("select * from t_resume where resumeid = #{resumeid}")
	@ResultType(Resume.class)
	Resume find(@Param("resumeid") Long resumeid);

	@Select("select max(resumeid) from t_resume")
	Long findMaxId();

	@Select("select * from t_resume where memberid = #{memberid}")
	@ResultType(Resume.class)
	List<Resume> findResumes(@Param("memberid") Long memberid);

}
