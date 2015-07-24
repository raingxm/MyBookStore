<%@include file="header.jsp" %>
    <div class="main-content">
        <div class="container ">
            <div class="welcome">
                <h1>Welcome to our book Store</h1>
                <spring:message code="home.page.hello"/>
            </div>
            <div class="search">
                <h4>Find beautiful book here.</h4>
                <input class="search-input" type="text" placeholder="find your book"/>
            </div>
        </div>
    </div>
    <div class="overlay">

    </div>
<%@include file="footer.jsp"%>