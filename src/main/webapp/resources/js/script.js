function submitAddBookForm() {
    if (validateFields($("#txtBookTitle"), $("#txtBookAuthor")) == false) {
        $(".validationErrorLabel").show();
    } else {
        $(".validationErrorLabel").hide();
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
}

function submitAddBorrowerForm() {
    if (validateFields($("#txtBorrowerFirstName"), $("#txtBorrowerLastName")) == false) {
        $(".validationErrorLabel").show();
    } else {
        $(".validationErrorLabel").hide();
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
}

function borrowBook(bookId, borrowerId) {
    $.ajax({
        type: "POST",
        url: "/book/borrow",
        data: {
            "bookId": bookId,
            "borrowerId": borrowerId
        },
        success: function (result) {
            if (result === 1) {
                $("#borrow-book-popup").modal('hide');
                location.reload(true);
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert(errorThrown);
        }
    });
}

function returnBook(bookId) {
    $.ajax({
        type: "POST",
        url: "/book/return",
        data: {
            "bookId": bookId
        },
        success: function (result) {
            if (result === 1) {
                $("#return-book-popup").modal('hide');
                location.reload(true);
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert(errorThrown);
        }
    });
}

function validateFields(field1, field2) {
    var field1Val = $.trim($(field1).val());
    var field2Val = $.trim($(field2).val());

    if (field1Val.length == 0 || field2Val.length == 0) {
        return false;
    } else {
        return true;
    }
}

$(document).ready(function () {

    $(".validationErrorLabel").hide();

    $("#btnAddBook").click(function () {
        $("#add-book-popup").modal('show');
        $(".validationErrorLabel").hide();
    });

    $("#btnAddBorrower").click(function () {
        $("#add-borrower-popup").modal('show');
        $(".validationErrorLabel").hide();
    });

    $(".btnBorrowReturn").click(function () {
        var selectedBookId = $(this).closest('tr').find('td.idCell').text();
        var option = $.trim($(this).attr("value"));
        if (option === "Borrow") {
            $("#borrow-book-popup").modal('show');
            $("#headerBookId").text(selectedBookId);
        } else if (option === "Return") {
            $("#return-book-popup").modal('show');
            $("#headerReturnBookId").text(selectedBookId);
        }
    });
});
