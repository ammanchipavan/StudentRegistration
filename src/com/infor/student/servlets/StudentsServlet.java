package com.infor.student.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import java.text.ParseException;
import javax.servlet.ServletResponse;
import javax.servlet.ServletRequest;
import com.infor.student.pojo.Student;
import java.text.SimpleDateFormat;
import com.infor.student.dbo.impl.StudentsDaoImpl;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServlet;


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
public class StudentsServlet extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    
    protected void doPost(final HttpServletRequest req, final HttpServletResponse resp) throws ServletException, IOException {
        final String action = req.getParameter("action");
        if (action.equals("enrollnewstudent")) {
            final StudentsDaoImpl studentsdaoimpl = new StudentsDaoImpl();
            final SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            try {
                final int rows = studentsdaoimpl.enrollNewStudent(new Student(req.getParameter("name"), sdf.parse(req.getParameter("dob")), req.getParameter("email")));
                req.setAttribute("rowsinserted", (Object)rows);
                final RequestDispatcher dispatch = req.getRequestDispatcher("students.jsp");
                dispatch.forward((ServletRequest)req, (ServletResponse)resp);
            }
            catch (NumberFormatException e) {
                e.printStackTrace();
            }
            catch (ParseException e2) {
                e2.printStackTrace();
            }
        }
    }
}
