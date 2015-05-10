<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <link rel="stylesheet" href="<c:url value='/css/home.css' />" type="text/css"/>
</head>
<body>
    <header class="head">Welcome to our book Store</header>
	<h1>${message}</h1>
</body>
</html>