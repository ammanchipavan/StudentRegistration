<html>
		<%@ page import="java.util.List" %>
		<%@ page import="java.util.HashMap" %>
		<%@ page import="com.infor.student.pojo.Student" %>
		
	<head>
		<title>marks data</title>
		<link rel="stylesheet" type="text/css" href="../css/marks.css">
	</head>
	<body>
			<div class="headerdivision">
					<table class="headertable">
						<tr>
							<td class="logo"><img src="../images/SchoolLogo.png" height=29px;"></td>
							<td><a href="../jsp/students.jsp">Enroll New Student</a></td>
							<td><a href="../jsp/subjects.jsp">Opt For Subjects</a></td>
							<td><a href="../MarksServlet?action=LoadStudents">View Marks</a></td>
						</tr>
					</table>
			</div>
			<div class="bodydivision">
					<img src="../images/schoolimage.png" width=100%;>
						<div class="middledivision">
								<p>View Marks</p>
						</div>
				<div class="formdivision">
						<center>
								<form method="POST" action="MarksServlet?action=viewmarks">
									<table>
										<tr>
											<td class="outputtd">select id</td>
											<td>
											<select name="id"  class="optionbox">
												<%
													Object obj = session.getAttribute("studentslist");
													if(obj!=null)
													{
														List<Student> studentsList = (List<Student>)obj;
														for(Student s:studentsList)
														{
															%>
															<option value="<% out.print(s.getId());%>"><% out.print(s.getId());%></option>
															<%
														}
													}
												%>
											</select>
											</td>
											<td><input type="submit" value="View Marks" class="buttons"></td>
										</tr>
										
									</table>
								</form>	
								<%
													Object obj1 = request.getAttribute("subjectslist");
													Object obj2=request.getAttribute("subjectwisemarks");
													if(obj1!=null && obj2!=null)
													{
														
														List<String> li = (List<String>)obj1;
														HashMap<String,Integer>  subjectwisemarks=(HashMap<String,Integer>)obj2;
														%>
													<table>
													<%
														for(String s:li)
														{
															%>
													<tr>
														<td class="outputtd"><% out.print(s);%></td>
														<td> <input type="text" name="<%=s%>" value="<%=subjectwisemarks.get(s)%>" class="buttons" readonly></td>
													</tr>
													<%
														}
														
														%>
														<tr>
														<td></td>
														<td><br></td>
														</tr>
														
														<%
														Object Total=request.getAttribute("total");
														Object Grade=request.getAttribute("grade");
														Object Errormessage=request.getAttribute("errormessage");
														if(Total!=null && Grade!=null)
														{
															if((li.isEmpty()))
															{
																String errormessage=(String)Errormessage;
																%>
																<tr>
																	<td></td>
																	<td class="outputtd"><% out.print(errormessage);%></td>
																</tr>

															<%} else
															{
																Integer total=(Integer)Total;
															String grade=(String)Grade;
															%>
															<tr>
															<td></td>
															<td class="outputtd"><% out.print("Total marks of the student is: "+total);%></td>
															</tr>
															<tr>
																<td></td>
																<td class="outputtd"><% out.print("Grade of the student is: "+grade);%></td>
															</tr>
														<%

															}

															}
														%>
														
													</table>
														<%
													}
													%>
													<table>
														<tr><td><h6><a href="home.jsp">Home Page</a></h6></td></tr>
													</table>		
					</center>
				</div>
			</div>
			<div class="footerdivision">
				<table class="footertable">
					<tr>
						<td  class="footertd">Copyright  2019 SHS. All rights reserved.</td>
						<td  class="footertd">Privacy Policy</td>
						<td  class="footertd">Terms of Use</td>
						<td  class="footertd">Legal</td>
					</tr>
				</table>
		</div>
	</body>
</html>