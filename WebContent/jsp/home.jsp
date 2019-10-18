<html>
<head>
<title>home page</title>
<link rel="stylesheet" type="text/css" href="css/home.css">
</head>
<body>
	<div class="headerdivision">
			<table class="headertable">
				<tr>
					<td class="logo"><img src="images/SchoolLogo.png" height=29px;"></td>
					<td><a href="jsp/students.jsp">Enroll New Student</a></td>
					<td><a href="SubjectsServlet?action=getmarks">Update Marks</a></td>
					<td><a href="MarksServlet?action=LoadStudents">View Grades</a></td>
				</tr>
			</table>
	</div>
	<div class="bodydivision">
		<img src="images/schoolimage.png" width=100%;>
		<div class="welcomemessage"><p>Welcome to Infor School</p>
		</div>
	</div>
	<div class="footerdivision">
		<table class="footertable">
			<tr>
				<td  class="footertd">Copyright  2019 INFOR. All rights reserved.</td>
				<td  class="footertd">Privacy Policy</td>
				<td  class="footertd">Terms of Use</td>
				<td  class="footertd">Legal</td>
			</tr>
		</table>
	</div>
</body>
</html>