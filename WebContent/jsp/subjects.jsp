<html>
		<%@ page import="java.util.List" %>
		<%@ page import="java.util.HashMap" %>
		<%@ page import="com.infor.student.pojo.Student" %>
		<%@ page import="com.infor.student.pojo.Marks" %>
<head>
<title>subjects</title>
<link rel="stylesheet" type="text/css" href="css/subjects.css">
<script type="text/javascript" src="js/validations.js"></script>
</head>
<body>
	<div class="headerdivision">
			<table class="headertable">
				<tr>
					<td class="logo"><img src="images/SchoolLogo.png" height=29px;></td>
					<td><a href="jsp/students.jsp">Enroll New Student</a></td>
					<td><a href="#">Update Marks</a></td>
					<td><a href="MarksServlet?action=LoadStudents">View Grades</a></td>
				</tr>
			</table>
	</div>
	<div class="bodydivision">
		<img src="images/schoolimage.png" width=100%;>
		<div class="middledivision">
			<p>Update Marks</p>
		</div>
		<div class="formdivision">
		<center>
		<form action="SubjectsServlet?action=viewsubjects" method="post">
				<table>
					<tr>
					<td class="outputtd">select id</td>
											<td>
											<select name="id"  class="optionbox">
												<%
													Object studentslist = session.getAttribute("studentslist");
													if(studentslist!=null)
													{
														List<Student> studentsList = (List<Student>)studentslist;
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
											<td><input type="submit" value="View Subjects" class="buttons"></td>
										</tr>
									</table>
		</form>									<form method="POST" action="SubjectsServlet?action=updatemarks">
												<%
												
													Object SubjectsList = request.getAttribute("subjectslist");
													Object SubjectWiseMarks=request.getAttribute("subjectwisemarks");
													if(SubjectsList!=null && SubjectWiseMarks!=null)
													{
														List<String> subjectslist = (List<String>)SubjectsList;
														HashMap<String,Integer>  subjectwisemarks=(HashMap<String,Integer>)SubjectWiseMarks;
														%>
													
													<table>
													<%
														for(String subjects:subjectslist)
														{
															%>
													<tr>
														<td class="outputtd"><% out.print(subjects);%></td>
														<td> <input type="text" name="<%=subjects%>" value="<%=subjectwisemarks.get(subjects)%>" class="buttons"></td>
													</tr>
													<%
														}
														%>
														</tr>
														<tr>
														<td></td>
														</tr>
														<tr>
														</tr>
														<tr>
														<td>
														</td>
														<td><input type="submit" value="Update Marks" class="buttons"></td>
														</tr>
														<tr>
														<%
														Object rowsinserted=request.getAttribute("rowsinserted");
														Object updatedlist=request.getAttribute("updatedlist");
														if(rowsinserted!=null )
														{
															Integer x=(Integer)rowsinserted;
															%>
															<td class="outputtd"><% out.print(x+" rows inserted");%></td>
															<tr>
															<%
															List<Marks> updatedList = (List<Marks>)updatedlist;
															for(Marks marks:updatedList)
															{
															%>
																<td class="outputtd"><%out.print(marks.getId());%></td>
																<td class="outputtd"><%out.print(marks.getSubname());%></td>
																<td class="outputtd"><%out.print(marks.getSubjectMarks());%></td>
																
															</tr>
														<%
														}
														}
														%>
														</tr>
													<%
														}
													%>
														
													</table>
												</form>
																										
					<table>
														<tr><td><h6><a href="/StudentRegistration">Home Page</a></h6></td></tr>
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
				
