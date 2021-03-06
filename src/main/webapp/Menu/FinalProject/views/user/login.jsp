<%-- 
    Document   : login
    Created on : Nov 25, 2020, 12:47:54 PM
    Author     : Minh Hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:url value="/css" var="url"></c:url>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Đăng nhập HKTT VPP</title>
            <link href="${url}/Login.css" rel="stylesheet" type="text/css"/>   
    </head>
    <body>
        <% String alertMsg = (String)request.getAttribute("alert");
        request.setAttribute("alert", alertMsg);%>
        <form method="post" action="${pageContext.request.contextPath}/login">
            <div class="box">
                <h1>Đăng nhập</h1>
                <c:if test="${alert != null}">
                    <script>
                        alert("${alert}");
                    </script>
                </c:if>
                <input type="text" name="UserName" placeholder="Tên đăng nhập">
                <input type="password" name="Password" placeholder="Mật khẩu">
                <input type="checkbox" name="remember"><span style="color:white;">Remember me</span>
                <input type="submit" value="Đăng nhập">
                <span><a href="${pageContext.request.contextPath}/register" style="color:white;"><i>Đăng kí</i></a></span>
            </div>
        </form>
    </body>
</html>
