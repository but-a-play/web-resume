package util;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class DataUtils {

	/**
	 * 
	 * @function:将对象转换为字符串进行比较函数
	 * @author： WZS
	 * @date： 2017年2月20日 上午11:22:01
	 * @mark:
	 * 
	 * @param oldValue
	 * @param newValue
	 * @return
	 */
	public static boolean DataStringCompare(Object oldValue, Object newValue) {
		boolean bResult = false;
		String oldValues = objToString(oldValue);
		String newValues = objToString(newValue);
		if ((oldValues == null && null != newValues) || (oldValues != null && null == newValues) || (oldValues != null && newValues != null && !oldValues.equals(newValues))) {
			bResult = true;
		}
		return bResult;
	}

	/**
	 * 
	 * @function:过滤字符串
	 * @author： WZS
	 * @date： 2017年2月16日 下午5:23:46
	 * @mark:
	 * 
	 * @param data
	 * @return
	 */
	public static String stringFilter(String data) {
		return data != null ? data : "";
	}

	/**
	 * 
	 * @function:
	 * @author： WZS
	 * @date： 2016年12月19日 下午5:03:23
	 * @mark:
	 * 
	 * @param obj
	 * @return
	 */
	public static Long objToLong(Object obj) {
		if (obj != null) {
			try {
				String value = obj.toString();
				if (value != null && !"".equals(value)) {
					return Long.valueOf(value);
				}
			} catch (Exception ex) {

			}
		}
		return null;
	}
	/**
	 * 
	 * @function:对象转时间
	 * @author：   WZS
	 * @date：        2017年6月19日 上午11:45:57
	 * @mark:   
	 * 
	 * @param obj
	 * @return
	 */
	public static Date objToDate(Object obj)
	{
		if (obj != null) {
			try {
				if(obj instanceof Long)
				{
					Date date = new Date();
					date.setTime(((Long) obj).longValue());
					return date;
				}
				else
				{
					String value = obj.toString();
					if (value != null && !"".equals(value)) {
						return DateUtils.StringToDateSec(value);
					}
				}
			} catch (Exception ex) {

			}
		}
		return null;
	}

	/**
	 * 
	 * @function:
	 * @author： WZS
	 * @date： 2016年12月19日 下午5:03:23
	 * @mark:
	 * 
	 * @param obj
	 * @return
	 */
	public static Integer objToInteger(Object obj) {
		if (obj != null) {
			try {
				String value = obj.toString();
				if (value != null && !"".equals(value)) {
					return Integer.valueOf(value);
				}
			} catch (Exception ex) {

			}
		}
		return null;
	}
	/**
	 * 
	 * @function:
	 * @author： WZS
	 * @date： 2016年12月19日 下午5:03:23
	 * @mark:
	 * 
	 * @param obj
	 * @return
	 */
	public static int objToInt(Object obj) {
		int result = 0;
		if (obj != null) {
			try {
				String value = obj.toString();
				if (value != null && !"".equals(value)) {
					Integer data= Integer.valueOf(value);
					if(data != null)
					{
						result = data.intValue();
					}
				}
			} catch (Exception ex) {

			}
		}
		return result;
	}
	/**
	 * 
	 * @function:对象转Double
	 * @author： WZS
	 * @date： 2017年1月17日 下午4:28:18
	 * @mark:
	 * 
	 * @param obj
	 * @return
	 */
	public static Double objToDouble(Object obj) {
		if (obj != null) {
			try {
				String value = obj.toString();
				if (value != null && !"".equals(value)) {
					return Double.valueOf(value);
				}
			} catch (Exception ex) {

			}
		}
		return null;
	}
	
	/**
	 * 
	 * @function:对象转Double
	 * @author： WZS
	 * @date： 2017年1月17日 下午4:28:18
	 * @mark:
	 * 
	 * @param obj
	 * @return
	 */
	public static float objToFloat(Object obj) {
		float result = 0;
		if (obj != null) {
			try {
				String value = obj.toString();
				if (value != null && !"".equals(value)) {
					Double data = Double.valueOf(value);
					if(data != null)
					{
						result = data.floatValue();
					}
				}
			} catch (Exception ex) {

			}
		}
		return result;
	}

	/**
	 * 
	 * @function:
	 * @author： WZS
	 * @date： 2016年12月19日 下午5:04:09
	 * @mark:
	 * 
	 * @param obj
	 * @return
	 */
	public static String objToString(Object obj) {
		if (obj != null) {
			String value = obj.toString();
			if("null".equals(value.toLowerCase()))
			{
				return "";
			}
			return value;
		}
		return "";
	}

	/**
	 * 
	 * @function:字符串分割成ID
	 * @author： WZS
	 * @date： 2017年2月15日 上午10:44:50
	 * @mark:
	 * 
	 * @param ids
	 * @return
	 */
	public static List<Long> stringToLongs(String idString) {
		List<Long> list = new ArrayList<Long>();
		try {
			if (idString != null && !"".equals(idString)) {
				idString = idString.replace("，", ",");
				idString = idString.replace(";", ",");
				idString = idString.replace("；", ",");
				String[] ids = idString.split(",");
				if (ids != null && ids.length > 0) {
					for (String id : ids) {
						list.add(objToLong(id));
					}
				}
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return list;
	}

	/**
	 * 
	 * @function:字符串分割成ID
	 * @author： WZS
	 * @date： 2017年2月15日 上午10:44:50
	 * @mark:
	 * 
	 * @param ids
	 * @return
	 */
	public static List<String> stringToArrays(String idString) {
		List<String> list = new ArrayList<String>();
		try {
			if (idString != null && !"".equals(idString)) {
				idString = idString.replace(";", ";");
				idString = idString.replace("；", ";");
				String[] ids = idString.split(";");
				if (ids != null && ids.length > 0) {
					for (String id : ids) {
						list.add(id);
					}
				}
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return list;
	}

	/**
	 * 
	 * @function:
	 * @author： WZS
	 * @date： 2017年4月6日 下午3:50:11
	 * @mark:
	 * 
	 * @param obj
	 * @return
	 */
	public static String objToUpper(Object obj) {
		String result = "";
		if (obj != null) {
			result = String.valueOf(obj).toUpperCase();
		}
		return result;
	}

	/**
	 * 
	 * @function:字符串分割成ID
	 * @author： WZS
	 * @date： 2017年2月15日 上午10:44:50
	 * @mark:
	 * 
	 * @param ids
	 * @return
	 */
	public static List<Long> stringToLongs(String[] ids) {
		List<Long> list = new ArrayList<Long>();
		try {
			if (ids != null && ids.length > 0) {
				for (String id : ids) {
					list.add(objToLong(id));
				}
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return list;
	}

	/**
	 * 
	 * @function:通过url获取String数据
	 * @author： FYX
	 * @date： 2017年4月25日14:45:26
	 * @mark:
	 * 
	 * @param url
	 * @return
	 */
	public static String loadJson(String url) {
		StringBuilder json = new StringBuilder();
		try {
			URL urlObject = new URL(url);
			URLConnection uc = urlObject.openConnection();
			BufferedReader in = new BufferedReader(new InputStreamReader(uc.getInputStream()));
			String inputLine = null;
			while ((inputLine = in.readLine()) != null) {
				json.append(inputLine);
			}
			in.close();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return json.toString();
	}

	/**
	 * 
	 * @function:Map返回一个String
	 * @author： FYX
	 * @date： 2017年4月25日14:45:26
	 * @mark:
	 * 
	 * @param url
	 * @return
	 */
	public static String getString(String key, Map<String, Object> map) {
		if (map.get(key) != null) {
			return map.get(key).toString();
		} else {
			return "";
		}
	}

	/**
	 * 
	 * @function:List Map返回第一个map的int数据
	 * @author： FYX
	 * @date： 2017年4月25日14:45:26
	 * @mark:
	 * 
	 * @param url
	 * @return
	 */
	public static Integer getInt(String key, List<Map<String, Object>> map) {
		if (map.size() > 0) {
			if (map.get(0).get(key) != null) {
				return Integer.valueOf(map.get(0).get(key).toString());
			} else {
				return 0;
			}
		} else {
			return 0;
		}

	}

	/**
	 * 
	 * @function: Map返回int数据
	 * @author： FYX
	 * @date： 2017年4月25日14:45:26
	 * @mark:
	 * 
	 * @param url
	 * @return
	 */
	public static Integer getMapInt(String key, Map<String, Object> map) {

		if (map != null && map.containsKey(key)) {
			if (map.get(key) != null) {
				return Integer.valueOf(map.get(key).toString());
			} else {
				return 0;
			}
		} else {
			return 0;
		}

	}

	/**
	 * 
	 * @function:判断数据是否全部为数字
	 * @author： FYX
	 * @date： 2017年5月10日14:22:48
	 * @mark:
	 * 
	 * @param url
	 * @return
	 */
	public static boolean isNumeric(String str) {
		for (int i = 0; i < str.length(); i++) {
			if (!Character.isDigit(str.charAt(i))) {
				return false;
			}
		}
		return true;
	}
	/**
	 * 
	 * @function:遍历list 根据项目ID得到里程碑信息 
	 * @author： FYX
	 * @date： 2017年5月22日11:01:02
	 * @mark:
	 * 
	 *
	 * @return
	 */
	public static List<Map<String, Object>> getPDTsMilestoneByIdList(List<Map<String, Object>> list, Long rgosProjectId) {
		List<Map<String, Object>> stagelist = new ArrayList<Map<String, Object>>();
		for(Map<String, Object> map:list){
			if(Long.valueOf(DataUtils.getString("project_id", map)).equals(rgosProjectId)){
				//System.out.println("RGOS项目ID为："+Long.valueOf(DataUtils.getString("project_id", map))+"对比的项目ID为"+rgosProjectId);				
				stagelist.add(map);
			}			
		}		
		return stagelist;
	}

	/**
	 * 
	 * @function:遍历list 确认执行策略分解状态是否完成
	 * @author： FYX
	 * @date： 2017年5月22日11:01:02
	 * @mark:
	 * 
	 *
	 * @return
	 */
	public static boolean checkStpState(List<Map<String, Object>> list, String key) {
		boolean flag = true;
		for (Map<String, Object> stpcasepacket : list) {
			if (DataUtils.getMapInt(key, stpcasepacket) > 0) {

			} else {
				flag = false;
			}
		}
		return flag;
	}
	/**
	 * 
	 * @function:遍历list 确认测试用设计是否完成
	 * @author： FYX
	 * @date： 2017年5月22日11:01:02
	 * @mark:
	 * 
	 *
	 * @return
	 */
	public static boolean checkDesignPercentState(List<Map<String, Object>> list, String key) {
		boolean flag = true;
		for (Map<String, Object> stpcasepacket : list) {
			if (DataUtils.getMapInt(key, stpcasepacket) == 100) {

			} else {
				flag = false;
			}
		}
		return flag;
	}
	 /** 
     * 根据文件计算出文件的MD5 
     * @author： FYX
     * @param file 
     * @return 
     */  
	public static String getFileMD5(InputStream in) {
		MessageDigest digest = null;
		try {
			if( in ==null){
				return null;
			}
			byte buffer[] = new byte[1024];
			int len;
			digest = MessageDigest.getInstance("MD5");
			while ((len = in.read(buffer, 0, 1024)) != -1) 
			{
				digest.update(buffer, 0, len);
			}
			in.close();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		BigInteger bigInt = new BigInteger(1, digest.digest());
		return bigInt.toString(16);
	}  
	
	public static void byte2File(byte[] buf, String filePath, String fileName) {
		BufferedOutputStream bos = null;
		FileOutputStream fos = null;
		File file = null;
		try {
			File dir = new File(filePath);
			if (!dir.exists()) {
				dir.mkdirs();
			}
			file = new File(filePath + File.separator + fileName);
			fos = new FileOutputStream(file);
			bos = new BufferedOutputStream(fos);
			bos.write(buf);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (bos != null) {
				try {
					bos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (fos != null) {
				try {
					fos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
	/**
     * 递归删除目录下的所有文件及子目录下所有文件
     * @param dir 将要删除的文件目录
     * @return 
     *                 
     *                 
     */
	public static void deleteDir(File dir) {
        if (dir.isDirectory()) {
            String[] children = dir.list();
            for (int i=0; i<children.length; i++) {
              deleteDir(new File(dir, children[i]));
  
            }
        }
        // 目录此时为空，可以删除
        dir.delete();
    }	
	
}
