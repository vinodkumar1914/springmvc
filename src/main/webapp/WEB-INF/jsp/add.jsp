<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- <%@page import="com.nagarro."%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page</title>

<style>
/* Add CSS styling here */
.edit-form {
    border: 1px solid #ccc;
    padding: 20px;
    max-width: 500px;
    margin: 0 auto;
}

.edit-form input[type=text], .edit-form button[type=submit], .edit-form button[type=reset] {
    width: 100%;
    padding: 12px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

.edit-form button[type=submit], .edit-form button[type=reset] {
    background-color: #4CAF50;
    color: white;
    border: none;
}

.edit-form button[type=submit]:hover, .edit-form button[type=reset]:hover {
    opacity: 0.8;
}
</style>

</head>
<body>
	<div class="edit-form" id="myForm">
	<h1 Style="text-align: center">Add Book Details</h1>
		<form action="data" class="form-container" method="post" Style="text-align: center">
			<tr>
				<td>Add Book code :</td>
				<td><input type="text" placeholder="Enter Book code" name="bookcode" required /><br/></td>
			</tr>
			<tr>
				<td>Book Name :</td>
				<td><input type="text" placeholder="Enter Book name " name="bookname" required /><br/></td>
			</tr>
			<tr>
				<td>Author :</td>
				<td><input type="text" placeholder="Enter Author name" name="author" required /><br/></td>
			</tr>
			<tr>
				<td>Data added :</td>
				<td><input type="text" placeholder="Enter data added" name="datadded" required /><br/></td>
			</tr>
			<button type="submit" class="btn">Submit</button>
			<button type="Reset" class="btn cancel" >Cancel</button>
		</form>
	</div>
</body>
</html>
