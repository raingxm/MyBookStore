<%-- get login page from http://getbootstrap.com/examples/signin/ --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="shortcut icon" href="http://pngimg.com/upload/book_PNG2116.png">
    <link href="<c:url value='/scripts/css/bootstrap.min.css' />" rel="stylesheet"/>
    <link href="<c:url value='/scripts/css/login.css' />" rel="stylesheet"/>
    <link href="<c:url value='/scripts/css/home.css' />" rel="stylesheet"/>
</head>
<body class="login-page">
    <%@include file="partial/navigation.jsp"%>
    <div class="container" id="loginPage">
        <c:if test="${success}">
            <div class="alert alert-success alert-dismissible fade in" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                        aria-hidden="true">x</span></button>
                register successful
            </div>
        </c:if>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>Welcome : ${pageContext.request.userPrincipal.name}
                | <a href="<c:url value="/j_spring_security_logout" />" > Logout</a></h2>
        </c:if>

        <spring:url var="authUrl" value="/static/j_spring_security_check" />

        <form class="form-signin" action="${authUrl}" method="post">
            <h2 class="form-signin-heading">Please Sign in</h2>
            <label class="sr-only">Email address</label>
            <input type="email" id="inputEmail" name="j_username" class="form-control" placeholder="Email address" required="" autofocus="">
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" name="j_password" class="form-control" placeholder="Password" required="">
            <div class="checkbox">
                <input id="remember_me" type="checkbox" name="_spring_security_remember_me" value="Remember me"/>
                <label for="remember_me">Remember me</label>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        </form>
    </div>
    <%@include file="footer.jsp"%>