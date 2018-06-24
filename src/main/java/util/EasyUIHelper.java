package util;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public final class EasyUIHelper {

	public static final String TEST_REPORT_TPL="WEB-INF/views/";
	
	private static final String GRID_PAGE  = "page";
	private static final String GRID_ROWS  = "rows";
	private static final String GRID_TOTAL = "total";

	private EasyUIHelper() {
		// The util, no instance.
	}

	/**
	 * Extract HTTP request parameters to Map from HTTP request.
	 * 
	 * @author WZS
	 *
	 * @param request
	 * @return
	 */
	public static Map<String, Object> getSimpleParameters(HttpServletRequest request) {
		Map<String, Object> result = new HashMap<String, Object>();
		if (request != null) {
			Map<String, String[]> parameterMap = request.getParameterMap();
			for (String key : parameterMap.keySet()) {
				String[] value = parameterMap.get(key);
				if (value.length > 0) {
					if (key.endsWith("[]")) {
						result.put(key.substring(0, key.length() - 2), value);
					} else if (StringUtil.hasText(value[0])) {
						result.put(key, value[0].trim());
					}
				}
			}
		}
		return result;
	}

	/**
	 * Extract HTTP request and paging parameters to Map from HTTP request.
	 * 
	 * @author WZS
	 *
	 * @param request
	 * @return
	 */
	public static Map<String, Object> getPagingSimpleParameters(HttpServletRequest request) {
		Map<String, Object> params = getSimpleParameters(request);
		if (request != null) {
			int page;
			try {
				page = Integer.parseInt(request.getParameter(GRID_PAGE));
			} catch (Exception e) {
				page = -1; // ignore
			}
			int rows;
			try {
				rows = Integer.parseInt(request.getParameter(GRID_ROWS));
			} catch (Exception e) {
				rows = 50; // default 50 rows
			}
			if (page != -1) {
				params.put("paging", true);
				params.put("pageOffset", (page - 1) * rows);
				params.put("pageLimit", rows);
			}
		}
		return params;
	}

	/**
	 * Split parameter value by given regex.
	 * 
	 * @author WZS
	 *
	 * @param value
	 * @param regex
	 * @return
	 */
	public static Set<String> splitParameter(String value, String regex) {
		if (StringUtil.hasText(value) && StringUtil.hasLength(regex)) {
			Set<String> set = new HashSet<String>();
			for (String part : value.split(regex)) {
				if (StringUtil.hasText(part = part.trim())) {
					set.add(part);
				}
			}
			return set;
		}
		return null;
	}

	/**
	 * Split specified name of HTTP request parameter value by given regex.
	 * 
	 * @author WZS
	 *
	 * @param request
	 * @param name
	 * @param regex
	 * @return
	 */
	public static Set<String> splitParameter(HttpServletRequest request, String name, String regex) {
		return request != null && StringUtil.hasText(name) ? splitParameter(request.getParameter(name), regex) : null;
	}

	/**
	 * Return EasyUI grid data model.
	 * 
	 * @author WZS
	 *
	 * @param data
	 * @param total
	 * @return
	 */
	public static Map<String, Object> returnGridData(Object data, long total) {
		Map<String, Object> result = new HashMap<String, Object>(2);
		result.put(GRID_ROWS, data);
		result.put(GRID_TOTAL, total);
		return result;
	}
	/**
	 * 
	 * @function:返回消息结果
	 * @author：   WZS
	 * @date：        2016年12月13日 下午4:17:54
	 * @mark:   
	 * 
	 * @param type
	 * @param message
	 * @return
	 */
	public static Map<String, Object> getResultMessage(String type,String message)
	{
		Map<String, Object> result = new HashMap<String, Object>(2);
		result.put("type", type);
		result.put("content", message);
		return result;
	}
	/**
	 * 
	 * @function:返回消息结果
	 * @author：   WZS
	 * @date：        2016年12月13日 下午4:17:54
	 * @mark:   
	 * 
	 * @param type
	 * @param message
	 * @return
	 */
	public static Map<String, Object> getResultMessage(String type,String message,Long id)
	{
		Map<String, Object> result = new HashMap<String, Object>(2);
		result.put("type", type);
		result.put("content", message);
		result.put("id", id);
		return result;
	}
	/**
	 * 
	 * @function:返回消息结果
	 * @author：   WZS
	 * @date：        2016年12月13日 下午4:17:54
	 * @mark:   
	 * 
	 * @param type
	 * @param message
	 * @return
	 */
	public static Map<String, Object> getSuccessMessage(String message)
	{
		return getResultMessage("success",message);
	}
	/**
	 * 
	 * @function:返回消息结果
	 * @author：   WZS
	 * @date：        2016年12月13日 下午4:17:54
	 * @mark:   
	 * 
	 * @param type
	 * @param message
	 * @return
	 */
	public static Map<String, Object> getSuccessMessage(String message,Long id)
	{
		return getResultMessage("success",message,id);
	}
	/**
	 * 
	 * @function:返回警告消息结果
	 * @author：   WZS
	 * @date：        2016年12月13日 下午4:17:54
	 * @mark:   
	 * 
	 * @param type
	 * @param message
	 * @return
	 */
	public static Map<String, Object> getWarnMessage(String message)
	{
		return getResultMessage("warn",message);
	}
	/**
	 * 
	 * @function:返回错误消息结果
	 * @author：   WZS
	 * @date：        2016年12月13日 下午4:17:54
	 * @mark:   
	 * 
	 * @param type
	 * @param message
	 * @return
	 */
	public static Map<String, Object> getErrorMessage(String message)
	{
		return getResultMessage("error",message);
	}
}
