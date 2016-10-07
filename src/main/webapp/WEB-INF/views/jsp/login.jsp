<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>

    <spring:url value="/resources/css/hello.css" var="coreCss"/>
    <spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCss"/>

    <link href="${bootstrapCss}" rel="stylesheet"/>
    <link href="${coreCss}" rel="stylesheet"/>

    <spring:url value="/resources/js/hello.js" var="coreJs"/>
    <spring:url value="/resources/js/jquery-2.2.4.min.js" var="jQuery"/>
    <spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJs"/>

    <script src="${coreJs}"></script>
    <script src="${jQuery}"></script>
    <script src="${bootstrapJs}"></script>
</head>
<body>

<div class="media-body">
    <form action="#" th:action="@{/}" th:object="${user}" method='POST'>
        <div>
            <div class="row">
                <div class="col-md-3">
                    Usuario: <input type="text" name="user" class="form-control"/>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    Password: <input type="password" name="pass" class="form-control"/>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <input class="btn btn-primary" type="submit" value="Login" />
                </div>
            </div>
        </div>
    </form>
</div>
</body>
</html>
