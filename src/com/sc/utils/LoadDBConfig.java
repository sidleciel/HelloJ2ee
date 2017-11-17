package com.sc.utils;

import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Properties;

public class LoadDBConfig {
	private static HashMap<String, String> dbHashMap = new HashMap<>();

	public static String getDBValue(String key) {
		return dbHashMap.get(key);
	}

	public static void load(String path) {
		try {
			Properties properties = new Properties();
			properties.load(new FileInputStream(path));

			String[] proKeys = new String[] { "driverclass", "url", "username", "password" };
			for (String s : proKeys) {
				String key = s;
				String val = properties.getProperty(key);
				dbHashMap.put(key, val);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
