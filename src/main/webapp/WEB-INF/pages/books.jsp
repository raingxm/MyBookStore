<%@include file="header.jsp"%>
<div id="bookPage" class="container">
    <div class="books-header">
        <h1 class="books-title">Books List</h1>
    </div>

    <div class="container">
        <table class="table">
            <tr>
                <th>Name</th>
                <th>Description</th>
                <th>Author</th>
                <th>Price</th>
                <th>Action</th>
            </tr>
            <c:forEach var="book" items="${ bookList }" >
                <tr>
                    <td>${ book.name }</td>
                    <td>${ book.describe } </td>
                    <td>${ book.author }</td>
                    <td>$${ book.price }</td>
                    <td>
                        <button type="button" class="btn btn-primary"
                                data-toggle="modal" data-target="#myModal">
                            Order
                        </button>
                        <span class="icon glyphicon glyphicon-heart"></span>
                    </td>
                </tr>
            </c:forEach>

        </table>
    <%@include file="partial/userInfoPopup.jsp"%>
    </div>
</div>
<%@include file="footer.jsp"%>