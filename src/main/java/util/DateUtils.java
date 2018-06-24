package util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public class DateUtils
{
	/**
	 * 
	 * @function:比较一个日期是否早于当前日期
	 * @author：   WZS
	 * @date：        2016-5-20 下午3:28:32
	 * @mark:   
	 * 
	 * @param src
	 * @param des
	 * @return
	 */
	public static boolean IsDateBeforeNow(String curDateStr,String dateStr)
	{
		boolean flag=true;
		if(dateStr!=null && !"".equals(dateStr) &&  curDateStr!=null && !"".equals(curDateStr))
		{
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.CHINA);
			try
			{
				Date olddate = sdf.parse(dateStr);
				Date newdate=sdf.parse(curDateStr);
				if(newdate.getTime()>olddate.getTime())
				{
					flag=true;
				}
				else
				{
					flag=false;
				}
			}
			catch (ParseException e)
			{
				e.printStackTrace();
			}
		}
		return flag;
	}
	/**
	 * 
	 * @function:判断开始日期是否小于结束日期
	 * @author：   WZS
	 * @date：        2017年6月21日 下午3:06:49
	 * @mark:   
	 * 
	 * @param startDate
	 * @param endDate
	 * @return 
	 */
	public static boolean IsDateBefore(Date startDate,Date endDate)
	{
		boolean flag=true;
		if(startDate != null && endDate != null)
		{
			if(startDate.getTime() > endDate.getTime())
			{
				flag = false;
			}
		}
		return flag;
	}
	/**
	 * 
	 * @function:
	 * @author： WZS
	 * @date： 2016-5-20 下午3:20:15
	 * @mark:
	 * 
	 * @param date
	 * @return
	 */
	public static String DateToStr(Date date)
	{
		if(date != null)
		{
			SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
			return  format.format(date);
		}
		return null;
	}
	/**
	 * 
	 * @function:
	 * @author： WZS
	 * @date： 2016-5-20 下午3:20:15
	 * @mark:
	 * 
	 * @param date
	 * @return
	 */
	public static String DateToStr(Date date,boolean isFormat)
	{
		SimpleDateFormat format =null;
		if(isFormat)
		{
			format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		}
		else
		{
			format = new SimpleDateFormat("yyyyMMddHHmmss");
		}
		String str = format.format(date);
		return str;
	}
	/**
	 * 
	 * @function:
	 * @author： WZS
	 * @date： 2016-5-20 下午3:20:20
	 * @mark:
	 * 
	 * @return
	 */
	public static String getDataNow()
	{
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String str = format.format(date);
		return str;
	}
	
	/**
	 * 
	 * @function:
	 * @author： WZS
	 * @date： 2016-5-20 下午3:20:20
	 * @mark:
	 * 
	 * @return
	 */
	public static String getDataNow(boolean isFormat)
	{
		Date date = new Date();
		SimpleDateFormat format =null;
		if(isFormat)
		{
			format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		}
		else
		{
			format = new SimpleDateFormat("yyyyMMddHHmmss");
		}
		String str = format.format(date);
		return str;
	}
	/**
	 * 
	 * @function:
	 * @author：   WZS
	 * @date：        2016-8-26 下午6:36:14
	 * @mark:   
	 * 
	 * @return
	 */
	public static String getDataTick()
	{
		Calendar calendar = Calendar.getInstance();
		String result=String.valueOf(calendar.getTimeInMillis());
		return result;
	}
	/**
	 * 
	 * @function:
	 * @author： WZS
	 * @date： 2015年6月4日 下午5:18:48
	 * @mark:
	 * 
	 * @return
	 */
	public static String dateToString(Date date)
	{
		String strDate = "";
		try
		{
			if (date != null)
			{
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
				strDate = dateFormat.format(date);
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return strDate;
	}

	/**
	 * 
	 * @function:
	 * @author： WZS
	 * @date： 2015年6月7日 下午3:32:21
	 * @mark:
	 * 
	 * @param strDate
	 * @return
	 */
	public static Date StringToDate(String strDate)
	{
		Date date = null;
		try
		{
			if (strDate != null && !"".equals(strDate))
			{
				Calendar calendar = Calendar.getInstance();
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
				calendar.setTime(dateFormat.parse(strDate));
				date = calendar.getTime();
			}

		}
		catch (Exception e)
		{
			// e.printStackTrace();
			return null;
		}
		return date;
	}

	/**
	 * 
	 * @function:
	 * @author： WZS
	 * @date： 2015年6月7日 下午3:32:21
	 * @mark:
	 * 
	 * @param strDate
	 * @return
	 */
	public static Date StringToDateSec(String strDate)
	{
		Date date = null;
		try
		{
			if (strDate != null && strDate.length() > 0)
			{
				if (!strDate.startsWith("20"))
					strDate = "20" + strDate;
				Calendar calendar = Calendar.getInstance();
				SimpleDateFormat dateFormat = null;
				if (strDate.indexOf('/') >= 0)
				{
					if (strDate.indexOf(' ') >= 0 && strDate.indexOf(' ') != strDate.lastIndexOf(' '))
					{
						dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
					}
					else if (strDate.indexOf(' ') >= 0 && strDate.indexOf(' ') == strDate.lastIndexOf(' '))
					{
						dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm");
					}
					else
					{
						dateFormat = new SimpleDateFormat("yyyy/MM/dd");
					}
				}
				else
				{
					if (strDate.indexOf(' ') >= 0 && strDate.indexOf(' ') != strDate.lastIndexOf(' '))
					{
						dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					}
					else if (strDate.indexOf(' ') >= 0 && strDate.indexOf(' ') == strDate.lastIndexOf(' '))
					{
						dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
					}
					else
					{
						dateFormat = new SimpleDateFormat("yyyy-MM-dd");
					}
				}
				calendar.setTime(dateFormat.parse(strDate));
				date = calendar.getTime();
			}
		}
		catch (Exception e)
		{
			date = null;
		}
		return date;
	}
}
