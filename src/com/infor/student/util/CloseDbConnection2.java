package com.infor.student.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


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
public class CloseDbConnection2 {
	
	/**
	 * @param connection
	 * @param preparedStatement
	 * @throws SQLException
	 */
	public static void closeConnection(Connection connection,
			PreparedStatement preparedStatement)throws SQLException {
		try {
			connection.close();
			preparedStatement.close();
			System.out.println("connection closed successfully..");
		} catch (SQLException e) {
			System.out.println("connection closed successfully..");
			e.printStackTrace();
		}
	}

}
