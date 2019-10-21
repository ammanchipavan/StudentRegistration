package com.infor.student.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;



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
public class TestLog4jServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	static final Logger LOGGER = Logger.getLogger(TestLog4jServlet.class); 
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		LOGGER.info("This is a logging statement from log4j");
		
		String html = "<html><h2>Log4j has been initialized successfully!</h2></html>";
		response.getWriter().println(html);
	}
}