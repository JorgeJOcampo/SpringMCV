<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Maven + Spring MVC</title>

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
    <script>
        $(document).ready(function(){
            $('#alternar').click(function(){
                $('#container').toggle('slow');
            });
        });
    </script>
</head>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Spring 3 MVC Project</a>
        </div>
    </div>
</nav>

<div class="jumbotron">
    <div class="container">
        <h1>${title}</h1>
        <p>
            <c:if test="${not empty name}">
                Hello, ${name}!
            </c:if>

            <c:if test="${not empty user.user}">
                Hello, ${user.user}!
            </c:if>

            <c:if test="${empty name && empty user.user}">
                Welcome guest! ${message}
            </c:if>
        </p>
        <p>
            <a class="btn btn-primary btn-lg" href="#" role="button" id="alternar">Ocultar</a>
        </p>
    </div>
</div>

<div class="container" id="container">
    <div class="row">
        <div class="col-md-4">
            <h2>Heading</h2>
            <p>ABC</p>
            <p>
                <a class="btn btn-default" href="#" role="button">View details</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Heading</h2>
            <p>ABC</p>
            <p>
                <a class="btn btn-default" href="#" role="button">View details</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Heading</h2>
            <p>ABC</p>
            <p>
                <a class="btn btn-default" href="#" role="button">View details</a>
            </p>
        </div>
    </div>

    <hr>
    <footer>
        <p>© Mkyong.com 2015</p>
    </footer>
</div>

</body>
</html>