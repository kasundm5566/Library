<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%@include file="includes/include.jsp" %>
    <title><fmt:message key="overdue.books.management.page.title" bundle="${lang}"/></title>
</head>

<body>
<%@include file="includes/top-navigation.jsp" %>
<h3><fmt:message key="overdue.books.management.header" bundle="${lang}"/></h3>
<table class="table table-bordered">
    <thead>
    <tr>
        <th><fmt:message key="overdue.books.management.table.header.book.id" bundle="${lang}"/></th>
        <th><fmt:message key="overdue.books.management.table.header.title" bundle="${lang}"/></th>
        <th><fmt:message key="overdue.books.management.table.header.author" bundle="${lang}"/></th>
        <th><fmt:message key="overdue.books.management.table.header.borrowed.by" bundle="${lang}"/></th>
        <th><fmt:message key="overdue.books.management.table.header.borrowed.date" bundle="${lang}"/></th>
        <th><fmt:message key="overdue.books.management.table.header.return.date" bundle="${lang}"/></th>
        <th><fmt:message key="overdue.books.management.table.header.action" bundle="${lang}"/></th>
    </tr>
    </thead>

    <tbody>
    <c:choose>
        <c:when test="${fn:length(books) gt 0}">
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
                                ${book.borrower.firstName}${" "}${book.borrower.lastName}
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
                    <td class="tblActionCell">
                        <c:choose>
                            <c:when test="${empty book.borrower.firstName}">
                                <input class="btnBorrowReturn btn btn-success btn-xs" type="button" value="Borrow">
                            </c:when>
                            <c:otherwise>
                                <input class="btnBorrowReturn btn btn-warning btn-xs" type="button" value="Return">
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <tr>
                <td class="noBooksCell" colspan="7"><fmt:message key="overdue.books.management.table.no.books.message" bundle="${lang}"/></td>
            </tr>
        </c:otherwise>
    </c:choose>
    </tbody>
</table>

<div id="return-book-popup" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title header-panel"><fmt:message
                        key="overdue.books.management.return.book.modal.header" bundle="${lang}"/></h4>
                <h5 id="headerReturnBookId" style="display: none;"></h5>
            </div>
            <div class="modal-body">
                <fmt:message key="overdue.management.return.book.confirmation" bundle="${lang}"/>
            </div>
            <div class="modal-footer">
                <a class="btn btn-default btn-sm" data-dismiss="modal"><fmt:message
                        key="overdue.books.management.return.book.form.close.button.text" bundle="${lang}"/></a>
                <button class="btn btn-success btn-sm" onclick="returnBook($('#headerReturnBookId').text());">
                    <fmt:message key="overdue.books.management.return.book.form.return.button.text"
                                 bundle="${lang}"/></button>
            </div>
        </div>
    </div>
</div>
</body>