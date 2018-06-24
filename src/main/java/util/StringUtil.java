package util;

import org.springframework.util.StringUtils;

/**
 * String utility methods.
 *
 * @author WZS
 *
 */
public final class StringUtil extends StringUtils {

	private static final char UNDERLINE = '_';

	private StringUtil() {
		// The util, no instance.
	}

	/**
	 * Convert camel to underline naming.
	 *
	 * @author WZS
	 *
	 * @param str
	 * @return
	 */
	public static String toUnderlineCase(String str) {
		if (hasLength(str)) {
			StringBuilder result = new StringBuilder();
			// made the first letter to lowercase
			result.append(Character.toLowerCase(str.charAt(0)));
			// made the other uppercase letters to underline with lowercase
			for (int i = 1; i < str.length(); i++) {
				char c = str.charAt(i);
				if (Character.isUpperCase(c)) {
					result.append(UNDERLINE).append(Character.toLowerCase(c));
				} else {
					result.append(c);
				}
			}
			return result.toString();
		}
		return null;
	}

	/**
	 * Convert underline to camel naming.
	 * 
	 * @author WZS
	 *
	 * @param str
	 * @return
	 */
	public static String toCamelCase(String str) {
		if (hasLength(str)) {
			int len = str.length();
			StringBuilder result = new StringBuilder();
			for (int i = 0; i < len; i++) {
				char c = str.charAt(i);
				if (c == UNDERLINE) {
					if (++i < len) {
						result.append(Character.toUpperCase(str.charAt(i)));
					}
				} else {
					result.append(Character.toLowerCase(c));
				}
			}
			return result.toString();
		}
		return null;
	}

}
