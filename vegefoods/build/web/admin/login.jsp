<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Login Page</title>
<c:set var="context" value="${pageContext.request.contextPath}" />
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet" type="text/css"/>
<link href="dist/css/sb-admin-2.css" rel="stylesheet" type="text/css"/>
<link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
</head>

<body>
    <form name="f1" id="f1" method="post" action="LoginControl">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Please Sign In</h3>
					</div>
					<div class="panel-body">
						<form  action="${context}/login" method="post">
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="Username" name="username"
										type="input" autofocus>
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Password"
										name="password" type="password" value="">
								</div>
								<div class="checkbox">
									<label> <input name="remember" type="checkbox"
										value="Remember Me">Remember Me
									</label>
								</div>
								<!-- Change this to a button or input when using this as a form -->
								<button type="submit" class="btn btn-lg btn-success btn-block">Login</button>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
    </form>                                                    
<script src="vendor/jquery/jquery.min.js" type="text/javascript"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="vendor/metisMenu/metisMenu.min.js" type="text/javascript"></script>
<script src="dist/js/sb-admin-2.js" type="text/javascript"></script>

</body>

</html>
