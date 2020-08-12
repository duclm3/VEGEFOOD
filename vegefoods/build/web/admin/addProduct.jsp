<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Add product</title>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet" type="text/css"/>
<link href="dist/css/sb-admin-2.css" rel="stylesheet" type="text/css"/>
<link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>

<div id="wrapper">
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse"
                        data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span> <span
                                class="icon-bar"></span> <span class="icon-bar"></span> <span
                                class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Sea Game 2017</a>
        </div>
        <!-- /.navbar-header -->
        <%@include file="includes/header.jsp"%>
        <!-- /.navbar-top-links -->
        <%@include file="includes/left-menu.jsp"%>
        <!-- /.navbar-static-side -->
    </nav>
        
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Thêm Sản phẩm</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading"></div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form action="InsertProduct" method="post" enctype="multipart/form-data">
                                          <div class="form-group">
                                            <label>Mã Sản phẩm</label> <input  required="required" class="form-control" name="productId"/>
                                        </div>
                                        <div class="form-group">
                                            <label>Tên sản phẩm</label> <input class="form-control" name="nameProduct"/>
                                        </div>
                                         <div class="form-group">
                                             <label>Giá sản phẩm</label> <input  class="form-control"  name="price"/>
                                        </div>
                                        <div class="form-group">
                                            <label>Nhóm sản phẩm</label>
                                            <div class="radio">
                                                <label> 
                                                    <input type="radio" name="GroupProduct_Id"  value="GR01" required="required"/>Rau củ đậu
                                                </label>
                                                <label> 
                                                    <input type="radio" name="GroupProduct_Id"  value="GR02" />Trái cây
                                                </label>
                                                <label> 
                                                    <input type="radio" name="GroupProduct_Id"  value="GR03"/>Nước ép
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label>Ảnh</label>  <input type="file" name="file" />
                                        </div>
                                        <div class="form-group">
                                            <label>Mô tả</label>
                                            
                                            <input type="text" name="descriptions"  />
                                        </div>
                                        <div class="form-group">
                                            <label>Số lượng</label> <input type="text" class="form-control" placeholder="Số lượng" name="quantity">
                                        </div>
                                        <div class="form-group">
                                            <label>Active</label>
                                            <div class="radio">
                                                <label> 
                                                    <input type="radio" name="proStatus"  value="true" checked=""/>Hiển thị
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label> 
                                                    <input type="radio" name="proStatus"  value="false"/>Không hiển thị
                                                </label>
                                            </div>
                                        </div>
                                        <input type="submit" value="Thêm mới" />
                                        <input type="reset" value="Làm lại" />
                                    </form> 
                                </div>
                            </div>
                        </div>
                    </div>

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
