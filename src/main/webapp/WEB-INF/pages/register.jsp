<%-- get login page from http://bootsnipp.com/snippets/featured/simple-registration-form --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <link rel="shortcut icon" href="http://pngimg.com/upload/book_PNG2116.png">
    <link href="<c:url value='/scripts/css/bootstrap.min.css' />" rel="stylesheet"/>
    <link href="<c:url value='/scripts/css/home.css' />" rel="stylesheet"/>
    <link href="<c:url value='/scripts/css/register.css' />" rel="stylesheet"/>
</head>
<body class="register-page">
<%@include file="partial/navigation.jsp"%>
<div class="container" id="registerPage">
    <form action="" class="form-register">
        <h2 class="form-register-heading">Register</h2>

        <div class="form-group">
            <label for="InputName">Enter Name</label>
            <div class="input-group">
                <input type="text" class="form-control" name="name" id="InputName" placeholder="Enter Name" required="">
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-asterisk"></span>
                </span>
            </div>
        </div>

        <div class="form-group">
            <label for="InputEmail">Enter Email</label>
            <div class="input-group">
                <input type="email" class="form-control" id="InputEmailFirst" name="email" placeholder="Enter Email" required="">
                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
            </div>
        </div>

        <div class="form-group">
            <label for="InputPassword">Enter Password</label>
            <div class="input-group">
                <input type="password" class="form-control" id="InputPassword" name="userpass" placeholder="Enter Password" required="">
                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
            </div>
        </div>

        <div class="form-group">
            <label for="ConfirmPassword">Confirm Password</label>
            <div class="input-group">
                <input type="password" class="form-control" id="ConfirmPassword" name="confirmpass" placeholder="Confirm password" required="">
                <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
            </div>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
    </form>
</div>
<%@include file="footer.jsp"%>