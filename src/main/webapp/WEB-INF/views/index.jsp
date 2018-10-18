<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%@include file="includes/include.jsp" %>
    <title><fmt:message key="index.page.title" bundle="${lang}"/></title>
</head>

<body>
<div class="container" style="width: 100%;">
    <%@include file="includes/top-navigation.jsp" %>
    <div class="row">
        <div class="col-md-4">
            <div class="card" onclick="location.href='/book';">
                <img src="img_avatar.png" style="width:100%">
                <div class="container">
                    <h4><b>Books Management</b></h4>
                    <p>View, add, borrow or return books.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card" onclick="location.href='/borrower';">
                <img src="img_avatar.png" style="width:100%">
                <div class="container">
                    <h4><b>Borrowers Management</b></h4>
                    <p>Add borrowers.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card" onclick="location.href='/book/overdue';">
                <img src="img_avatar.png" style="width:100%">
                <div class="container">
                    <h4><b>Overdue Books Management</b></h4>
                    <p>View and return overdue books.</p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>