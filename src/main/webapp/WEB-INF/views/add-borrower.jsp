<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>My Library | Add Borrower</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/resources/js/script.js"></script>
    <link rel="stylesheet" href="/resources/css/style.css"/>
</head>

<body>
<h3>Add Borrower</h3>
<p>Add borrower section.</p>
<input type="button" value="Add borrower" id="btnAddBorrower">
<table class="table table-bordered">
    <thead>
    <tr>
        <th>Borrower id</th>
        <th>Name</th>
        <th>Age</th>
        <th>City</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${borrowers}" var="borrower">
        <tr>
            <td>${borrower.id}</td>
            <td>${borrower.name}</td>
            <td>${borrower.age}</td>
            <td>${borrower.city}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<div id="add-borrower-popup" class="modal fade">
    <div class="modal-dialog" style="width: 70%;">
        <div class="modal-content">
            <div class="modal-header">
                <%--<img class="icons" src="<c:url value="/resources/images/icons/item_list.ico"/>">--%>
                <h4 class="modal-title header-panel">Add book</h4>
            </div>
            <div class="modal-body">
                <form id="add-borrower-form">
                    <div>
                        <div class="form-group">
                            <label>Name</label>
                            <input type="text" class="form-control" name="borrowerName">
                        </div>
                        <div class="form-group">
                            <label>Age</label>
                            <input type="text" class="form-control" name="borrowerAge">
                        </div>
                        <div class="form-group">
                            <label>City</label>
                            <input type="text" class="form-control" name="borrowerCity">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <a class="btn btn-default btn-sm" data-dismiss="modal">Close</a>
                <button class="btn btn-success btn-sm" onclick="submitAddBorrowerForm();">Add</button>
            </div>
        </div>
    </div>
</div>

</body>