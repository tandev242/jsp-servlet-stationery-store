<%-- 
    Document   : registerStaff
    Created on : Dec 27, 2020, 7:44:15 PM
    Author     : Minh Hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:url value="/css" var="url"></c:url>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Đăng kí nhân viên</title>
            <link href="${url}/Login.css" rel="stylesheet" type="text/css"/>   
    </head>
    <body>
        <% String alertMsg = (String) request.getAttribute("alert");
            request.setAttribute("alert", alertMsg);%>
        <form method="post" action="${pageContext.request.contextPath}/registerStaff">
            <div class="box">
                <h1>Đăng kí</h1>
                <c:if test="${alert != null}">
                    <script>
                        alert("${alert}");
                    </script>
                </c:if>
                <input type="text" name="UserName" placeholder="Tên đăng nhập" required>
                <input type="password" name="Password" placeholder="Mật khẩu" required>
                <input type="text" name="Email" placeholder="Email" required>
                <input type="text" name="Phone" placeholder="Số điện thoại" pattern="[0-9]{1-30}" required>
                <input type="text" name="FirstName" placeholder="Họ" required>
                <input type="text" name="LastName" placeholder="Tên" required>
                <input type="text" name="Address" placeholder="Địa chỉ" required>
                <input type="submit" value="Đăng kí">
                <span style="color: white;"><i><a href="${pageContext.request.contextPath}/admin/welcome" style="color:white;">Quay về</a></i></span>
            </div>
        </form>
    </body>
</html>
