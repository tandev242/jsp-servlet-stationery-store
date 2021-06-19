<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value="/Menu/FinalProject/views/layout" var="url"></c:url>
<c:url value="/Menu/FinalProject/views/layout/user/assets/themes" var="urlUser"></c:url>  
<!--<nav class="navbar-default navbar-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav" id="main-menu">



            <li class="active-link">
                <a href="${pageContext.request.contextPath}/admin/welcome" ><i class="fa fa-desktop "></i>Dashboard <span class="badge">Included</span></a>
            </li>


            <li>
                <a href="${pageContext.request.contextPath}/admin/inventory"><i class="fa fa-shopping-cart"></i>Inventory  <span class="badge">Included</span></a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/admin/userinfo"><i class="fa fa-users "></i>Users Infomation  <span class="badge">Included</span></a>
            </li>


            <li>
                <a href="#"><i class="fa fa-qrcode "></i>My Link One</a>
                <a href="#"><i class="fa fa-key "></i>Admin (chưa có)</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/admin/statistic"><i class="fa fa-bar-chart-o"></i>Statistic</a>
            </li>

            <li>
                <a href="#"><i class="fa fa-edit "></i>Edit Contact (chưa có)</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/admin/staff"><i class="fa fa-table "></i>Managers Staff</a>
            </li>
            <li>
                <a href="#"><i class="fa fa-bell-o "></i>Feed Back (chưa có)</a>
            </li>

        </ul>
    </div>

</nav>-->
<nav class="navbar-default navbar-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav" id="main-menu">
            <li class="text-center user-image-back">
                <img src="${urlUser}/images/logo.png" class="img-responsive" style="width: 307px; height: 75px;"/>

            </li>


            <li>
                <a href="${pageContext.request.contextPath}/admin/welcome"><i class="fa fa-desktop "></i>Dashboard</a>
            </li>
            <li>
                <a href="#"><i class="fa fa-users"></i>Quản lí nhân sự<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="${pageContext.request.contextPath}/admin/userinfo">Khách hàng</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/admin/staff">Nhân viên</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/admin/registerStaff">Đăng kí nhân viên</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/admin/inventory"><i class="fa fa-shopping-cart"></i>Kho hàng</a>
            </li>


            <li>
                <a href="#"><i class="fa fa-qrcode"></i>Phương thức thanh toán (Dự kiến)<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="#">Momo (Dự kiến)</a>
                    </li>
                    <li>
                        <a href="#">Paypal (Dự kiến)</a>
                    </li>
                    <li>
                        <a href="#">VN Pay</a>
                    </li>
                    <li>
                        <a href="#">iBank (Dự kiến)<span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li>
                                <a href="#">BIDV</a>
                            </li>
                            <li>
                                <a href="#">Argibank</a>
                            </li>
                            <li>
                                <a href="#">Vietcombank</a>
                            </li>

                        </ul>

                    </li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="fa fa-lightbulb-o"></i>Feedback (Dự kiến)</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/admin/statistic"><i class="fa fa-bar-chart-o"></i>Thống kê doanh thu</a>
            </li>
            <li>
                <a href="#"><i class="fa fa-key"></i>Admin (Dự kiến)</a>
            </li>
            <li>
                <a href="https://finalprojweb-gr12-vpp.herokuapp.com"><i class="fa fa-home "></i>Trang chủ</a>
            </li>
        </ul>

    </div>

</nav>