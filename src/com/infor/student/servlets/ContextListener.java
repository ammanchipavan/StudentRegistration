package com.infor.student.servlets;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.log4j.PropertyConfigurator;


/**

 *---Begin Copyright Notice---

 * 

 *NOTICE

 * 

 *THIS SOFTWARE IS THE PROPERTY OF AND CONTAINS CONFIDENTIAL INFORMATION OF

 *INFOR AND/OR ITS AFFILIATES OR SUBSIDIARIES AND SHALL NOT BE DISCLOSED

 *WITHOUT PRIOR WRITTEN PERMISSION. LICENSED CUSTOMERS MAY COPY AND ADAPT

 *THIS SOFTWARE FOR THEIR OWN USE IN ACCORDANCE WITH THE TERMS OF THEIR

 *SOFTWARE LICENSE AGREEMENT. ALL OTHER RIGHTS RESERVED.

 * 

 *(c) COPYRIGHT 2019 INFOR. ALL RIGHTS RESERVED. THE WORD AND DESIGN MARKS

 *SET FORTH HEREIN ARE TRADEMARKS AND/OR REGISTERED TRADEMARKS OF INFOR

 *AND/OR ITS AFFILIATES AND SUBSIDIARIES. ALL RIGHTS RESERVED. ALL OTHER

 *TRADEMARKS LISTED HEREIN ARE THE PROPERTY OF THEIR RESPECTIVE OWNERS.

 * 

 *---End Copyright Notice---

 */
public class ContextListener implements ServletContextListener {

	/**
	 * Initialize log4j when the application is being started
	 */
	@Override
	public void contextInitialized(ServletContextEvent event) {
		// initialize log4j here
		ServletContext context = event.getServletContext();
		String log4jConfigFile = context.getInitParameter("log4j-config-location");
		String fullPath = context.getRealPath("") + File.separator + log4jConfigFile;
		
		PropertyConfigurator.configure(fullPath);
		
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent event) {
		// do nothing
	}
}