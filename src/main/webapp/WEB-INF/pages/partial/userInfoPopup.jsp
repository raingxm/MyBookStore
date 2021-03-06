<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">User Info</h4>
            </div>
            <form action="/saveOrder" method="post">
                <div class="modal-body user-info">
                    <div class="col-lg-12">
                        You like:
                        <span class="favor-book-title"></span>
                        Want know more, leave your contact info here.
                    </div>
                    <div class="col-md-12">
                        <span class="col-md-2 col-md-offset-1">Name:</span>
                        <input type="text" name="name" class="col-md-9"/>
                    </div>

                    <div class="col-md-12">
                        <span class="col-md-2 col-md-offset-1">Phone:</span>
                        <input type="text" name="phone" class="col-md-9"/>
                    </div>

                    <div class="col-md-12">
                        <span class="col-md-2 col-md-offset-1">Email:</span>
                        <input type="text" name="email" class="col-md-9"/>
                    </div>

                    <div class="col-md-12">
                        <span class="col-md-2 col-md-offset-1">Address:</span>
                        <input type="text" name="address" class="col-md-9"/>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>