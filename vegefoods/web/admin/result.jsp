<%-- 
    Document   : result
    Created on : 04-Nov-2019, 16:42:44
    Author     : Le Minh Duc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div id="result">
            <h3>${requestScope["message"]}</h3>
<!--            <h3>${requestScope["messag2"]}</h3>
            <h3>${requestScope["message3"]}</h3>-->
        </div>
    </body>
</html>
