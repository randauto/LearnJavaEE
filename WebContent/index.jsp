<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="loginForm" method="post" action="loginServlet">
		Username: <input type="text" name="username"/>
		Password: <input type="password" name="password"/>
		Speaking language:
		<input type="checkbox" name="language" value="english" />English
		<input type="checkbox" name="language" value="french" />French
		Gender:
		<input type="radio" name="gender" value="male" />Male
		<input type="radio" name="gender" value="female" />Female
		Feedback:<br />
		<textarea rows="5" cols="30" name="feedback"></textarea><br />
		
		Job Category:
		<select name="jobCat">
			<option value="tech">Technology</option>
			<option value="admin">Administration</option>
			<option value="biology">Biology</option>
			<option value="science">Science</option>
		</select>

		<input type="submit" value="Login"/>
	</form>
	<br/>
			<form method="post" action="uploadServlet" enctype="multipart/form-data">
 
        Select file to upload: <input type="file" name="uploadFile" />
 
        <input type="submit" value="Upload" />
</form>
</body>
</html>