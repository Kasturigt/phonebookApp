<%@page import="com.conn.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file ="component/allCss.jsp" %>
<style type="text/css">
.back-image{
        background:url("image/studying.jpeg");
        width:100%;
        height:80vh;
        background-repeat: no-repeat;
}
</style>

</head>
<body>
     <%@include file="component/navbar.jsp" %>
   <% 
   Connection conn = DbConnect.getConn();
   out.print(conn);
   %>
     <div class="container-fluid back-image text-center text-success">
          <h1>Welcome to PhoneBook App</h1>
          
     </div>

     </div>
     
     
     <%@include file="component/footer.jsp" %>
</body>
</html>