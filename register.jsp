<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<%@include file="component/allCss.jsp"%>
</head>
<body style="background-color: #f0eded;">
    <%@include file="component/navbar.jsp"%>
    <div class="container-fluid">
        <div class="row p-2">
            <div class="col-md-6 offset-md-3">
                <div class="card">
                    <div class="card-body">
                        <h4 class="text-center text-success">Registration Page</h4>
                        <% 
                        String sucssMsg = (String) session.getAttribute("sucssMsg"); 
                        String errorMsg = (String) session.getAttribute("errorMsg");
                        if (sucssMsg != null) { %>
                            <p class="text-success text-center"><%=sucssMsg%></p>
                        <% } if (errorMsg != null) { %>
                            <p class="text-danger text-center"><%=errorMsg%></p>
                        <% } %>
                        <form action="register" method="post">
                            <div class="form-group">
                                <label for="name">Enter Name</label>
                                <input name="name" type="text" class="form-control" id="name" required>
                            </div>
                            
                            <div class="form-group">
                                <label for="email">Email address</label>
                                <input name="email" type="email" class="form-control" id="email" required>
                            </div>
                            
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input name="password" type="password" class="form-control" id="password" required>
                            </div>
                            
                            <div class="text-center mt-2">
                                <button type="submit" class="btn btn-primary">Register</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="margin-top: 80px">
        <%@include file="component/footer.jsp" %>
    </div>
</body>
</html>