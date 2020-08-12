
<%@page import="user.model.ProductModel"%>
<%@page import="user.entity.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Home</title>
<c:set var="context" value="${pageContext.request.contextPath}" />

<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet" type="text/css"/>
<link href="dist/css/sb-admin-2.css" rel="stylesheet" type="text/css"/>
<link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<!--<link href="bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>-->
<style>
    .imgM{
        width: 100px;
    }
</style>
</head>

<body>
        
<div id="wrapper">
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Sea Game 2019</a>
        </div>
        <%@include file="includes/header.jsp"%>
        <%@include file="includes/left-menu.jsp"%>
    </nav>
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Danh Sách Sản Phẩm</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <table width="100%" class="table table-striped table-bordered table-hover dataTable no-footer dtr-inline" id="dataTables-example" role="grid" aria-describedby="dataTables-example_info" style="width: 100%;">
                        <thead>
                            <tr role="row">
                                <th class="sorting_desc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1"
                                        aria-label="Rendering engine: activate to sort column ascending" style="width: 60px;text-align: center" aria-sort="descending">Mã SP
                                </th>
                                <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1"
                                        aria-label="Browser: activate to sort column ascending" style="width: 10%;">Ảnh
                                </th>
                                <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1"
                                        aria-label="Browser: activate to sort column ascending" style="width: 150px;text-align: center">Tên sản phẩm
                                </th>
                                <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1"
                                        aria-label="Platform(s): activate to sort column ascending" style="width: 110px;text-align: center">Giá 
                                </th>
                                <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1"
                                        aria-label="Platform(s): activate to sort column ascending" style="width: 150px;text-align: center">Mô tả
                                </th>
                                <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1"
                                        aria-label="Platform(s): activate to sort column ascending" style="width: 70px;text-align: center">Trạng thái
                                </th>
                                <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="2"
                                        aria-label="Platform(s): activate to sort column ascending" style="width: 70px;text-align: center">Hành động
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                ProductModel prm = new ProductModel();
                                List<Product> listpro = prm.getALLProductAdmin();
                                for (Product pro : listpro) 
                                {
                                    %>
                                        <tr class="gradeA odd" role="row">
                                            <td class="sorting_1" style="text-align: center; vertical-align: middle;"><%=pro.getProductId()%></td>
                                            <td><img class="imgM" src="<%=pro.getImageLink()%>" style="display:block; width:100%; height:10%;"></td>
                                            <td><%=pro.getProductName()%></td>
                                            <td ><%=pro.getPrice()%></td>
                                            <td><%=pro.getDescriptions()%></td>
                                            <td><%=pro.getProStatus()%></td>
                                            <td style="width: 30px">
                                                <a href="DeleteProduct?productId=<%=pro.getProductId()%>" style="cursor: pointer" class="glyphicon glyphicon-trash" onclick="return confirm('Bạn muốn xóa?');"></a>
                                            </td>
                                            <td style="width: 30px">
                                                <a href="updateProduct.jsp?productId=<%=pro.getProductId()%>" style="cursor: pointer" class="glyphicon glyphicon-pencil" ></a>
                                            </td>
                                            
                                        </tr> 
                                    <%

                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
      
</div>

<script src="vendor/jquery/jquery.min.js" type="text/javascript"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="vendor/metisMenu/metisMenu.min.js" type="text/javascript"></script>
<script src="dist/js/sb-admin-2.js" type="text/javascript"></script>
</body>

</html>
