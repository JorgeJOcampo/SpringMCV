<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>${title}</title>

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