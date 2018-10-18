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
                <img src="resources/images/books.jpg" style="width:100%">
                <div class="container">
                    <h4><b><fmt:message key="index.page.books.management.card.header" bundle="${lang}"/></b></h4>
                    <p><fmt:message key="index.page.books.management.card.description" bundle="${lang}"/></p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card" onclick="location.href='/borrower';">
                <img src="resources/images/borrowers.jpg" style="width:100%; height: 250px;">
                <div class="container">
                    <h4><b><fmt:message key="index.page.borrowers.management.card.header" bundle="${lang}"/></b></h4>
                    <p><fmt:message key="index.page.borrowers.management.card.description" bundle="${lang}"/></p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card" onclick="location.href='/book/overdue';">
                <img src="resources/images/overdue.jpg" style="width:100%; height: 250px;">
                <div class="container">
                    <h4><b><fmt:message key="index.page.overdue.books.management.card.header" bundle="${lang}"/></b></h4>
                    <p><fmt:message key="index.page.overdue.books.management.card.description" bundle="${lang}"/></p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>