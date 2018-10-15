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
        <div>
            <input type="submit" value="Submit">
        </div>
    </div>
</form>
</body>