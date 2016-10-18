<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="layout.jsp"/>
<body>
    <div class="media-body">
        <form:form action="user" method='POST' commandName="user">
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
