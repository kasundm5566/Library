<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>My Library | Welcome</title>
    <%@include file="includes/include.jsp" %>
</head>

<body>
<div class="container">
    <h2>My Library</h2>
    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#menu-add-book">Add book</a></li>
        <li><a data-toggle="tab" href="#menu-add-borrower">Add borrower</a></li>
        <li><a data-toggle="tab" href="#menu-search-book">Search book</a></li>
        <li><a data-toggle="tab" href="#menu-overdue-book">View overdue books</a></li>
    </ul>

    <div class="tab-content">
        <div id="menu-add-book" class="tab-pane fade in active">
            <h3>Add Book</h3>
            <p>Add book section.</p>
            <form id="add-book-form">
                <div>
                    <div class="form-group">
                        <label>Book title</label>
                        <input type="text" class="form-control" title="bookName">
                    </div>
                    <div class="form-group">
                        <label>Author</label>
                        <input type="text" class="form-control" title="bookAuthor">
                    </div>
                    <div class="form-group">
                        <label>Year</label>
                        <input type="text" class="form-control" title="bookYear">
                    </div>
                    <div>
                        <input type="submit" value="Submit">
                    </div>
                </div>
            </form>
        </div>
        <div id="menu-add-borrower" class="tab-pane fade">
            <h3>Add Borrower</h3>
            <p>Add borrower section.</p>
            <form id="add-borrower-form">
                <div>
                    <div class="form-group">
                        <label>Name</label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Age</label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>City</label>
                        <input type="text" class="form-control">
                    </div>
                </div>
            </form>
        </div>
        <div id="menu-search-book" class="tab-pane fade">
            <h3>Search/borrow book</h3>
            <p>Search/borrow book section</p>
            <form class="search-book-form" action="/action_page.php" style="max-width:300px">
                <input type="text" placeholder="Search.." title="search">
                <button type="submit">Search</button>
            </form>
        </div>
        <div id="menu-overdue-book" class="tab-pane fade">
            <h3>Overdue Books</h3>
            <p>Overdue books section</p>
        </div>
    </div>
</div>
</body>
</html>