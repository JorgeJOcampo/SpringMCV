<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="layout.jsp"/>
<body>
    <div class="media-body">
        <form action="/user" method='POST'>
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
                <form:hidden path="title"/>
                <div class="row">
                    <div class="col-md-3">
                        <input class="btn btn-primary" type="submit" value="Login" />
                    </div>
                </div>
            </div>
        </form>
    </div>
    <a href="/hello/erc">Link</a>
</body>
</html>
