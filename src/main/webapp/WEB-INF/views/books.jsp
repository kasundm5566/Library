<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>My Library | Books</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/resources/js/script.js"></script>
    <link rel="stylesheet" href="/resources/css/style.css"/>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>

<body>
<h3>Add Book</h3>
<p>Add book section.</p>
<input type="button" value="Add book" id="btnAddBook">
<form id="search-book-form" style="max-width:350px" action="/book/search">
    <c:choose>
        <c:when test="${empty searchKey}">
            <input type="text" placeholder="Search.." title="searchName">
        </c:when>
        <c:otherwise>
            <input type="text" value="${searchKey}" title="searchName">
        </c:otherwise>
    </c:choose>
    <button>Search</button>
</form>

<table class="table table-bordered">
    <thead>
    <tr>
        <th>Book id</th>
        <th>Book title</th>
        <th>Book author</th>
        <th>Borrowed by</th>
        <th>Borrowed date</th>
        <th>Return date</th>
        <th>Action</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${books}" var="book">
        <tr>
            <td>${book.id}</td>
            <td>${book.title}</td>
            <td>${book.author}</td>
            <td>
                <c:choose>
                    <c:when test="${empty book.borrower.firstName}">
                        -
                    </c:when>
                    <c:otherwise>
                        ${book.borrower.firstName}
                    </c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${empty book.borrower.firstName}">
                        -
                    </c:when>
                    <c:otherwise>
                        ${book.borrowedDate}
                    </c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${empty book.borrower.firstName}">
                        -
                    </c:when>
                    <c:otherwise>
                        ${book.returnDate}
                    </c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${empty book.borrower.firstName}">
                        <input type="button" value="Borrow">
                    </c:when>
                    <c:otherwise>
                        <input type="button" value="Return">
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<div id="add-book-popup" class="modal fade">
    <div class="modal-dialog" style="width: 70%;">
        <div class="modal-content">
            <div class="modal-header">
                <%--<img class="icons" src="<c:url value="/resources/images/icons/item_list.ico"/>">--%>
                <h4 class="modal-title header-panel">Add book</h4>
            </div>
            <div class="modal-body">
                <form id="add-book-form">
                    <div>
                        <div class="form-group">
                            <label>Title</label>
                            <input type="text" class="form-control" title="bookTitle">
                        </div>
                        <div class="form-group">
                            <label>Author</label>
                            <input type="text" class="form-control" title="bookAuthor">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <a class="btn btn-default btn-sm" data-dismiss="modal">Close</a>
                <button class="btn btn-success btn-sm" onclick="submitAddBookForm();">Add</button>
            </div>
        </div>
    </div>
</div>

</body>