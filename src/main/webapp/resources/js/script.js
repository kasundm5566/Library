function submitAddBookForm() {
    $.ajax({
        type: "POST",
        url: "/book",
        data: $("#add-book-form").serialize(),
        success: function (result) {
            if (result === 1) {
                $("#add-book-popup").modal('hide');
                location.href = "/books"
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert(errorThrown);
        }
    });
}

function submitAddBorrowerForm() {
    $.ajax({
        type: "POST",
        url: "/borrower",
        data: $("#add-borrower-form").serialize(),
        success: function (result) {
            if (result === 1) {
                $("#add-book-popup").modal('hide');
                location.reload(true);
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert(errorThrown);
        }
    });
}

$(document).ready(function () {

    $("#btnAddBook").click(function () {
        $("#add-book-popup").modal('show');
    });

    $("#btnAddBorrower").click(function () {
        $("#add-borrower-popup").modal('show');
    });

    $(".btnBorrowReturn").click(function () {
        var selectedBookId = $(this).closest('tr').find('td.idCell').text();
        var option = $.trim($(this).attr("value"));
        if (option === "Borrow") {
            $("#borrow-book-popup").modal('show');
        } else if (option === "Return") {
            $("#return-book-popup").modal('show');
        }
    });
});
