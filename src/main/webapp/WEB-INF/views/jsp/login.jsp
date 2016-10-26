<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<body>
    <div class="media-body">
        <spring:hasBindErrors name="${objectName}">
            <div class="alert alert-danger alert-dismissible" role="alert">
                <c:forEach var="error" items="${errors.allErrors}">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span>&times;</span></button>
                    <span class="glyphicon glyphicon-exclamation-sign"></span> <b><spring:message message="${error}"/></b>
                    <br />
                </c:forEach>
            </div>
        </spring:hasBindErrors>
        <form:form action="user" method='POST' commandName="user">
            <%--Para mensajes individuales--%>
            <%--<form:errors path="*" cssClass="alert alert-danger alert-dismissible"/>--%>
            <div>
                <div class="row">
                    <div class="col-md-3">
                        Usuario: <form:input path="user" class="form-control"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        Password: <form:password path="pass" class="form-control"/>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-3">
                        <input class="btn btn-primary" type="submit" value="Login" />
                    </div>
                </div>
            </div>
        </form:form>
    </div>
    <a href="/hello/erc">Link</a>
</body>
</html>
