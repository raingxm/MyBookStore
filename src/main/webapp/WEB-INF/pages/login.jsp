<%-- get login page from http://getbootstrap.com/examples/signin/ --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!Doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="shortcut icon" href="http://pngimg.com/upload/book_PNG2116.png">
    <link href="<c:url value='/scripts/css/bootstrap.min.css' />" rel="stylesheet"/>
    <link href="<c:url value='/scripts/css/login.css' />" rel="stylesheet"/>
</head>
<body class="login-page">
    <div class="container">
        <form action="" class="form-signin">
            <h2 class="form-signin-heading">Please Sign in</h2>
            <label class="sr-only">Email address</label>
            <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="">
            <div class="checkbox">
                <label>
                    <input type="checkbox" value="Remember me"/>
                    Remember me
                </label>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        </form>
    </div>
</body>
</html>