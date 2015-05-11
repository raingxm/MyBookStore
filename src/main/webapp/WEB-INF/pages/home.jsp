<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="header.jsp" %>
  <nav class="navbar navbar-inverse">
    <div class="container">
      <div id="navbar">
        <ul class="nav navbar-nav">
          <li class="active"><a href="#">Home</a></li>
          <li><a href="#">Book Store</a></li>
          <li><a href="#">My Cart</a></li>
          <li><a href="#">Contact Us</a></li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="container">
    <div class="welcome">
      <h1>Welcome to our book Store</h1>
      <spring:message code="home.page.hello" />
    </div>
  </div>
<%@include file="footer.jsp"%>