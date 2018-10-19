<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%@include file="includes/include.jsp" %>
    <title><fmt:message key="borrowers.management.page.title" bundle="${lang}"/></title>
</head>

<body>
<%@include file="includes/top-navigation.jsp" %>
<h3><fmt:message key="borrowers.management.header" bundle="${lang}"/></h3>
<hr>
<input class="btn btn-success btn-sm" type="button" value="Add borrower" id="btnAddBorrower">
<table class="table table-bordered">
    <thead>
    <tr>
        <th><fmt:message key="borrowers.management.table.header.borrower.id" bundle="${lang}"/></th>
        <th><fmt:message key="borrowers.management.table.header.first.name" bundle="${lang}"/></th>
        <th><fmt:message key="borrowers.management.table.header.last.name" bundle="${lang}"/></th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${borrowers}" var="borrower">
        <tr>
            <td>${borrower.id}</td>
            <td>${borrower.firstName}</td>
            <td>${borrower.lastName}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<div id="add-borrower-popup" class="modal fade">
    <div class="modal-dialog" style="width: 70%;">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title header-panel"><fmt:message key="borrowers.management.add.borrower.modal.header" bundle="${lang}"/></h4>
            </div>
            <div class="modal-body">
                <form id="add-borrower-form">
                    <div>
                        <div class="form-group">
                            <label><fmt:message key="borrowers.management.add.borrower.form.first.name.label" bundle="${lang}"/></label>
                            <input id="txtBorrowerFirstName" type="text" class="form-control" name="borrowerFirstName">
                        </div>
                        <div class="form-group">
                            <label><fmt:message key="borrowers.management.add.borrower.form.last.name.label" bundle="${lang}"/></label>
                            <input id="txtBorrowerLastName" type="text" class="form-control" name="borrowerLastName">
                        </div>
                    </div>
                </form>
                <label class="validationErrorLabel"><fmt:message key="borrowers.management.add.borrower.form.validation.error.message" bundle="${lang}"/> </label>
            </div>
            <div class="modal-footer">
                <a class="btn btn-default btn-sm" data-dismiss="modal"><fmt:message key="borrowers.management.add.borrower.form.close.button.text" bundle="${lang}"/></a>
                <button class="btn btn-success btn-sm" onclick="submitAddBorrowerForm();"><fmt:message key="borrowers.management.add.borrower.form.add.button.text" bundle="${lang}"/></button>
            </div>
        </div>
    </div>
</div>

</body>