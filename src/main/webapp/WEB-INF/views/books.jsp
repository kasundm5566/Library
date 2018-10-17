<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%@include file="includes/include.jsp" %>
    <title><fmt:message key="books.management.page.title" bundle="${lang}"/></title>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>

<body>
<h3><fmt:message key="books.management.header" bundle="${lang}"/></h3>
<input type="button" value="Add book" id="btnAddBook">
<form id="search-book-form" style="max-width:350px" action="/book/search">
    <c:choose>
        <c:when test="${empty searchKey}">
            <input type="text" placeholder="Search.." name="searchKey">
        </c:when>
        <c:otherwise>
            <input type="text" value="${searchKey}" name="searchKey">
        </c:otherwise>
    </c:choose>
    <button><fmt:message key="books.management.search.button.text" bundle="${lang}"/></button>
</form>

<table class="table table-bordered">
    <thead>
    <tr>
        <th><fmt:message key="books.management.table.header.book.id" bundle="${lang}"/></th>
        <th><fmt:message key="books.management.table.header.title" bundle="${lang}"/></th>
        <th><fmt:message key="books.management.table.header.author" bundle="${lang}"/></th>
        <th><fmt:message key="books.management.table.header.borrowed.by" bundle="${lang}"/></th>
        <th><fmt:message key="books.management.table.header.borrowed.date" bundle="${lang}"/></th>
        <th><fmt:message key="books.management.table.header.return.date" bundle="${lang}"/></th>
        <th><fmt:message key="books.management.table.header.action" bundle="${lang}"/></th>
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

<div id="add-book-popup" class="modal fade">
    <div class="modal-dialog" style="width: 70%;">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title header-panel"><fmt:message key="books.management.add.book.modal.header" bundle="${lang}"/></h4>
            </div>
            <div class="modal-body">
                <form id="add-book-form">
                    <div>
                        <div class="form-group">
                            <label><fmt:message key="books.management.add.book.form.title.label" bundle="${lang}"/></label>
                            <input id="txtBookTitle" type="text" class="form-control" name="bookTitle">
                        </div>
                        <div class="form-group">
                            <label><fmt:message key="books.management.add.book.form.author.label"/></label>
                            <input id="txtBookAuthor" type="text" class="form-control" name="bookAuthor">
                        </div>
                    </div>
                </form>
                <label class="validationErrorLabel"><fmt:message key="books.management.add.book.form.validation.error.message" bundle="${lang}"/> </label>
            </div>
            <div class="modal-footer">
                <a class="btn btn-default btn-sm" data-dismiss="modal"><fmt:message
                        key="books.management.add.book.form.close.button.text" bundle="${lang}"/></a>
                <button class="btn btn-success btn-sm" onclick="submitAddBookForm();"><fmt:message
                        key="books.management.add.book.form.add.button.text" bundle="${lang}"/></button>
            </div>
        </div>
    </div>
</div>

<div id="borrow-book-popup" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title header-panel"><fmt:message
                        key="books.management.borrow.book.modal.header" bundle="${lang}"/></h4>
                <h5 id="headerBookId" style="display: none;"></h5>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label><fmt:message key="books.management.borrow.book.form.borrower.label" bundle="${lang}"/></label>
                    <select id="cmbBorrowerId">
                        <c:forEach items="${borrowers}" var="borrower">
                            <option value="${borrower.id}">${borrower.firstName}${" "}${borrower.lastName}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="modal-footer">
                <a class="btn btn-default btn-sm" data-dismiss="modal"><fmt:message
                        key="books.management.borrow.book.form.close.button.text" bundle="${lang}"/></a>
                <button class="btn btn-success btn-sm"
                        onclick="borrowBook($('#headerBookId').text(),$('#cmbBorrowerId').val());"><fmt:message
                        key="books.management.borrow.book.form.borrow.button.text" bundle="${lang}"/></button>
            </div>
        </div>
    </div>
</div>

<div id="return-book-popup" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title header-panel"><fmt:message
                        key="books.management.return.book.modal.header" bundle="${lang}"/></h4>
                <h5 id="headerReturnBookId" style="display: none;"></h5>
            </div>
            <div class="modal-body">
                <fmt:message key="books.management.return.book.confirmation" bundle="${lang}"/>
            </div>
            <div class="modal-footer">
                <a class="btn btn-default btn-sm" data-dismiss="modal"><fmt:message
                        key="books.management.return.book.form.close.button.text" bundle="${lang}"/></a>
                <button class="btn btn-success btn-sm"
                        onclick="returnBook($('#headerReturnBookId').text());"><fmt:message
                        key="books.management.return.book.form.return.button.text" bundle="${lang}"/></button>
            </div>
        </div>
    </div>
</div>

</body>