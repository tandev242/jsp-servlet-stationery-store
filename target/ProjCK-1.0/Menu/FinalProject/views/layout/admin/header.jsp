<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:url value="/Menu/FinalProject/views/layout/user/assets/themes" var="url"></c:url>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="adjust-nav">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/welcome">
                <img src="${url}/images/logo.png" alt="Bootsshop"/>
            </a>

        </div>

        <span class="logout-spn" >
            <a href="${pageContext.request.contextPath}/logout" style="color:#fff;">LOGOUT</a>
        </span>
    </div>
</div>-->
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="adjust-nav">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/welcome"><i class="fa fa-square-o "></i>Mừng bạn trở lại ${sessionScope.account.getLastName()}</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">See Website</a></li>
                <li><a href="#">Mã giảm giá (Dự kiến)</a></li>
                <li><a href="${pageContext.request.contextPath}/logout">Thoát</a></li>
            </ul>
        </div>
    </div>
</div>