<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>My Library | Add Book</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/resources/js/script.js"></script>
    <link rel="stylesheet" href="/resources/css/style.css"/>
</head>

<body>
<h3>Add Book</h3>
<p>Add book section.</p>
<form id="add-book-form">
    <div>
        <div class="form-group">
            <label>Book name</label>
            <input type="text" class="form-control" name="bookName">
        </div>
        <div class="form-group">
            <label>Author</label>
            <input type="text" class="form-control" name="bookAuthor">
        </div>
        <div class="form-group">
            <label>Year</label>
            <input type="text" class="form-control" name="bookYear">
        </div>
        <div>
            <input type="submit" value="Submit">
        </div>
    </div>
</form>
</body>