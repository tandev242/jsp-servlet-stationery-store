<%@page import="java.util.List"%>
<%@page import="DAO.inventoryDAO"%>
<%@page import="DAO.productDAO"%>
<%@page import="model.inventory"%>
<%@page import="model.product"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value="/Menu/FinalProject/views/layout" var="url"></c:url>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>Kho hàng</title>
            <!-- BOOTSTRAP STYLES-->
            <link href="${url}/admin/assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <!-- FONTAWESOME STYLES-->
        <link href="${url}/admin/assets/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <!-- CUSTOM STYLES-->
        <link href="${url}/admin/assets/css/custom.css" rel="stylesheet" type="text/css"/>
        <!-- GOOGLE FONTS-->
        <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
        <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
        <!-- JQUERY SCRIPTS -->
        <script src="${url}/admin/assets/js/jquery-1.10.2.js" type="text/javascript"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="${url}/admin/assets/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- CUSTOM SCRIPTS -->
        <script src="${url}/admin/assets/js/custom.js" type="text/javascript"></script>
        <!-- METISMENU SCRIPTS -->
        <script src="${url}/admin/assets/js/jquery.metisMenu.js"></script>
    </head>
    @section header{
    <link href="${url}/admin/assets/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css"/>
    }
    @section footer{
    <script src="${url}/admin/assets/vendor/datatables/dataTables.bootstrap4.min.js" type="text/javascript"></script>
    <script src="${url}/admin/assets/vendor/datatables/jquery.dataTables.min.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            $('.table').DataTable();
        })</script>
    }
    <body>
        <%
            request.getAttribute("inventory");
            Object alert = request.getAttribute("alert");
            request.setAttribute("alt", alert);
        %>
        <div id="wrapper">
            <%@include file="/Menu/FinalProject/views/layout/admin/header.jsp" %>
            <%@include file="/Menu/FinalProject/views/layout/admin/sidebar.jsp" %>

            <div id="page-wrapper" >
                <div id="page-inner">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2>KHO HÀNG</h2>
                            <hr />
                            <a href="/Menu/FinalProject/views/admin/new_product.jsp" class="btn btn-success">Thêm sản phẩm</a>
                            <br><br>
                        </div>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>
                                        ID sản phẩm
                                    </th>
                                    <th>
                                        Tên sản phẩm
                                    </th>
                                    <th>
                                        Giá mua
                                    </th>
                                    <th>
                                        Giá bán
                                    </th>
                                    <th>
                                        Khuyến mãi
                                    </th>
                                    <th>
                                        Số lượng
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${inventory}" var="inven">
                                    <tr>
                                        <td>
                                            ${inven.getIDProduct()}
                                        </td>
                                        <td>
                                            <c:set var = "i"  value = "${inven.getIDProduct()}"/>
                                            <c:set var="product" value="${productDAO.get(i)}"/>
                                            ${product.getName()}
                                        </td>
                                        <td>
                                            ${product.getPrice()}
                                        </td>
                                        <td>
                                            ${inven.getPriceBuy()}
                                        </td>
                                        <td>
                                            ${product.getPromotionPrice()}
                                        </td>
                                        <td>
                                            ${inven.getQuantity()}
                                        </td>
                                    </tr>

                                </c:forEach>
                            </tbody>
                        </table>
                    </div>              

                </div>
            </div>
            <%@include file="/Menu/FinalProject/views/layout/admin/footer.jsp" %>
        </div>


    </body>
</html>
