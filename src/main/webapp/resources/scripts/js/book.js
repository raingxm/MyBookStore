(function() {
    $('#myModal').on('show.bs.modal', function(event) {
        var button = $(event.relatedTarget);
        var name = $(button).closest('tr').find('td:nth-child(1)').text();
        $('#myModal .favor-book-title').text(name);
    });

    $('#bookPage').find('.table .icon').on('click', function() {
        $(this).toggleClass('like');
    });
})();