<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
        int x;
        int y;
    %>
    <%
        try {
            x = Integer.parseInt(request.getParameter("x")) ;
        } catch (NumberFormatException ex) {
            %>
            <h2>Error: x must be a number</h2>
            <%
            return;
        }
     
        try {
            y = Integer.parseInt(request.getParameter("y")) ;
        } catch (NumberFormatException ex) {
            %>
            <h2>Error: y must be a number</h2>
            <%
            return;
        }  
         
    %>
    <h1>
        Sum of <%=x%> and <%=y%> is <%=(x + y) %>
    </h1>
</body>
</html>