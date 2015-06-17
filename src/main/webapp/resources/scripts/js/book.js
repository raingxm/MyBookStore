$('#myModal').on('show.bs.modal', function(event) {
    var button = $(event.relatedTarget);
    var name = $(button).closest('tr').find('td:nth-child(1)').text();
    $('#myModal .favor-book-title').text(name);
});
