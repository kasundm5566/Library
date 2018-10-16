<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>My Library | Books</title>
    <%@include file="includes/include.jsp" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>

<body>
<h3>Overdue Books</h3>
<p>Overdue books section.</p>
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
            <td class="idCell">${book.id}</td>
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
                        <input class="btnBorrowReturn" type="button" value="Borrow">
                    </c:when>
                    <c:otherwise>
                        <input class="btnBorrowReturn" type="button" value="Return">
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<div id="return-book-popup" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title header-panel">Return book</h4>
                <h5 id="headerReturnBookId" style="display: none;"></h5>
            </div>
            <div class="modal-body">
                Confirm return?
            </div>
            <div class="modal-footer">
                <a class="btn btn-default btn-sm" data-dismiss="modal">Close</a>
                <button id="brnConfirmReturn" class="btn btn-success btn-sm" onclick="returnBook($('#headerReturnBookId').text());">Yes</button>
            </div>
        </div>
    </div>
</div>
</body>