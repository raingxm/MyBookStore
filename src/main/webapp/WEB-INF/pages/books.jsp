<%@include file="header.jsp"%>
<div class="container">
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
            <tr>
                <td>All the Light We Cannot See: A Novel </td>
                <td>From the highly acclaimed, multiple award-winning Anthony Doerr, the beautiful, stunningly ambitious instant New York Times bestseller about a blind French girl and a German boy
                    whose paths collide in occupied France as both try to survive the devastation of World War II.</td>
                <td>Anthony Doerr </td>
                <td>$15.53</td>
                <td>
                    <button type="button" class="btn btn-primary btn-lg"
                            data-toggle="modal" data-target="#myModal">
                        Order
                    </button>
                </td>
            </tr>
            <tr>
                <td>Effective Java (2nd Edition)</td>
                <td>Look no further! Effective Java, Second Edition, brings together seventy-eight indispensable programmer's rules
                    of thumb: working, best-practice solutions for the programming challenges you encounter every day.</td>
                <td>Joshua Bloch</td>
                <td>$31.72</td>
                <td>
                    <button type="button" class="btn btn-primary btn-lg"
                            data-toggle="modal" data-target="#myModal">
                        Order
                    </button>
                </td>
            </tr>
            <c:forEach var="historyBook" items="${ historical }" >
                <td>${ historyBook.name }</td>
                <td>${ historyBook.describe } </td>
                <td>${ historyBook.author }</td>
                <td>$${ historyBook.price }</td>
                <td>
                    <button type="button" class="btn btn-primary btn-lg"
                            data-toggle="modal" data-target="#myModal">
                        Order
                    </button>
                </td>
            </c:forEach>

        </table>
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">User Info</h4>
                    </div>

                    <div class="modal-body user-info">
                        <div class="col-md-12">
                            <span class="col-md-2 col-md-offset-1">Name:</span>
                            <input type="text" name="name" class="col-md-9" />
                        </div>

                        <div class="col-md-12">
                            <span class="col-md-2 col-md-offset-1">Phone:</span>
                            <input type="text" name="phone" class="col-md-9" />
                        </div>

                        <div class="col-md-12">
                            <span class="col-md-2 col-md-offset-1">Email:</span>
                            <input type="text" name="email" class="col-md-9" />
                        </div>

                        <div class="col-md-12">
                            <span class="col-md-2 col-md-offset-1">Address:</span>
                            <input type="text" name="address" class="col-md-9" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<%@include file="footer.jsp"%>