<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>My Library | Borrowers</title>
    <%@include file="includes/include.jsp" %>
</head>

<body>
<h3><fmt:message code="borrowers.management.header"/></h3>
<input type="button" value="Add borrower" id="btnAddBorrower">
<table class="table table-bordered">
    <thead>
    <tr>
        <th><fmt:message code="borrowers.management.table.header.borrower.id"/></th>
        <th><fmt:message code="borrowers.management.table.header.first.name"/></th>
        <th><fmt:message code="borrowers.management.table.header.last.name"/></th>
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
                <h4 class="modal-title header-panel"><fmt:message code="borrowers.management.add.borrower.modal.header"/></h4>
            </div>
            <div class="modal-body">
                <form id="add-borrower-form">
                    <div>
                        <div class="form-group">
                            <label><fmt:message code="borrowers.management.add.borrower.form.first.name.label"/></label>
                            <input id="txtBorrowerFirstName" type="text" class="form-control" name="borrowerFirstName">
                        </div>
                        <div class="form-group">
                            <label><fmt:message code="borrowers.management.add.borrower.form.last.name.label"/></label>
                            <input id="txtBorrowerLastName" type="text" class="form-control" name="borrowerLastName">
                        </div>
                    </div>
                </form>
                <label class="validationErrorLabel"><fmt:message code="borrowers.management.add.borrower.form.validation.error.message"/> </label>
            </div>
            <div class="modal-footer">
                <a class="btn btn-default btn-sm" data-dismiss="modal"><fmt:message code="borrowers.management.add.borrower.form.close.button.text"/></a>
                <button class="btn btn-success btn-sm" onclick="submitAddBorrowerForm();"><fmt:message code="borrowers.management.add.borrower.form.add.button.text"/></button>
            </div>
        </div>
    </div>
</div>

</body>