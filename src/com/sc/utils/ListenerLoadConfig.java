package com.sc.utils;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ListenerLoadConfig implements ServletContextListener {
	public static final long TOKEN_CHECKED_TIME = 24 * 60 * 60 * 1000;

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
		String path = event.getServletContext().getRealPath("/WEB-INF/config/dbconfig.properties");
		LoadDBConfig.load(path);
		System.out.println(DBUtil.getConn());
	}

}
