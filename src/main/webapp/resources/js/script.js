/**
 * Created by dinesh on 5/15/17.
 */
$(document).ready(function () {
    // alert("JQuery script executed...");
    $("#add-book-form").submit(function () {
        $.ajax({
            type: "POST",
            url: "/book",
            data: $(this).serialize(),
            success: function (result) {
                alert(result);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert(errorThrown);
            }
        });
    });

    $("#add-borrower-form").submit(function () {
        $.ajax({
            type: "POST",
            url: "/borrower",
            data: $(this).serialize(),
            success: function (result) {
                alert(result);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert(errorThrown);
            }
        });
    });
});
