<html>
<head>
<title>subjects</title>
<link rel="stylesheet" type="text/css" href="../css/subjects.css">
<script type="text/javascript" src="../js/validations.js"></script>
</head>
<body>
	<div class="headerdivision">
			<table class="headertable">
				<tr>
					<td class="logo"><img src="../images/SchoolLogo.png" height=29px;></td>
					<td><a href="../jsp/students.jsp">Enroll New Student</a></td>
					<td><a href="../jsp/subjects.jsp">Opt For Subjects</a></td>
					<td><a href="../MarksServlet?action=LoadStudents">View Marks</a></td>
				</tr>
			</table>
	</div>
	<div class="bodydivision">
		<img src="../images/schoolimage.png" width=100%;>
		<div class="middledivision">
			<p>Opt For Subjects</p>
		</div>
		<div class="formdivision">
		<center>
				<table>
						<tr>
							<td class="formtd">Student Id</td><td><input type="text" name="name" class="input" required></td>
						</tr>
				</table>
				<table>
					<tr>
						<td  class="formtd">Subjects to Opt:</td>
						<td  class="formtd"><input type="checkbox" name="sub1" value="maths" class="checkbox">Maths</td>
						<td  class="formtd"><input type="checkbox" name="sub2"  value="physics" class="checkbox">Physics</td>
						<td  class="formtd"><input type="checkbox" name="sub3"  value="chemistry" class="checkbox">Chemistry</td>
					</tr>
					<tr>
							<td></td>
							<td></td>
							<td><input type="submit" value="Opt" class="insertbutton"></td>
					</tr>
					<tr><td></td><td></td><td class="formbottomtd"> <a href="home.jsp">Home Page</a></td></tr>
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