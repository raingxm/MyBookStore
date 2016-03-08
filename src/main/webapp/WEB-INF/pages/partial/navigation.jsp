<nav class="navbar navbar-inverse book-nav">
    <div class="container">
        <div id="navbar">
            <a href="/" class="navbar-brand"><img alt="logo" src="/img/book-logo.jpg"/></a>
            <ul class="nav navbar-nav">
                <li class="active home"><a href="/">Home</a></li>
                <li class="category">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                        Book Category <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="/bookList">Book Store</a></li>
                        <li><a href="/bookList/history">History</a></li>
                        <li><a href="#">Technology</a></li>
                        <li><a href="#">Literature</a></li>
                    </ul>
                </li>
                <li class="cart"><a href="#">My Cart</a></li>
                <li class="contact-us"><a href="/contactUs">Contact Us</a></li>
            </ul>
            <c:choose>
                <c:when test="${pageContext.request.userPrincipal.name == null}">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="register"><a href="/register">Register</a></li>
                        <li class="login"><a href="/login">Login</a></li>
                    </ul>
                </c:when>
                <c:otherwise>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                Me<span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="/bookList">MyProfile</a></li>
                                <li><a href="<c:url value="/j_spring_security_logout" />" > Logout</a></li>
                            </ul>
                        </li>
                    <ul>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</nav>