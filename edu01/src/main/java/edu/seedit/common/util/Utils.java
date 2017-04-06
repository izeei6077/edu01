package edu.seedit.common.util;

public class Utils {
	public static String toEmptyBlank(String nullStr) {
		return nullStr == null ? "" : nullStr;
	}
	
	public static String nullSpace(String nullSpa) {
		return nullSpa == null ? "&nbsp;" : nullSpa;
	}

}
