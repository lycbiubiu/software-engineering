package org.PMS.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**转变日期格式
 * @author 87174
 *
 */
public class DateUtil {
	public static String format(Date date,String pattern){
		return new SimpleDateFormat(pattern).format(date);
	}
}
