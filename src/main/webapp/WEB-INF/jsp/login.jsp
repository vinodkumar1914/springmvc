
<%@page import="com.nagarro.entity.Books"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%
	String userID = (String) session.getAttribute("username");
	 if (userID == null) {
		response.sendRedirect("index.jsp");
	} 
%>

<%
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<style>
@charset "ISO-8859-1";
h3{
    color: rgb(97, 97, 171);
    height:50px;
    display:flex;
    align-items:center;
    margin-top:1px;
}
body {
  font-family: Arial, sans-serif;
  font-size: 14px;
}

form {
  display: flex;
  flex-wrap: wrap;
  margin-top: 20px;
}

form label {
  width: 100%;
  margin-bottom: 5px;
}
table {
  width: 90%;
  border-collapse: collapse;
  margin-top: 20px;
}

table th, table td {
  padding: 10px;
  text-align: left;
  border: 1px solid #ccc;
}

table th {
  background-color: #4CAF50;
  color: black;
}

table tr:nth-child(even) {
  background-color: #f2f2f2;
}

.editButton {
  display: none;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background-color: #fff;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 3px;
}
</style>
<script>
function redirectToLogin() {
	  window.location.href = "http://localhost:3030/LibraryHub";
	} 
</script>

<body >

	<div >
		<div class="row">
			<h3 class="d-flex justify-content-center py-3 p-3 mb-2">
				Library Management System
			</h3>
			<div class="col-6 text-start">
				<form action="add" class="pad">
					<div>
						<input type="submit" value="Add Book" class="btn btn-primary">
					</div>
				</form>
			</div>
			<div class="col-6 text-end">
				<button onclick="redirectToLogin()" class="btn btn-primary">Logout</button>
			</div>
		</div>
        <div class= "row center ">
            <div class="table-responsive t1 ">
                <table class="table table-bordered ">

                        <tr>
                        	<th class="hh">S. No.</th>
					        <th class="hh">Book Code</th>
					        <th class="hh">Book Name</th>
					        <th class="hh">Author</th>
					        <th class="hh">Data Added</th>
					        <th class="hh">Action</th>
				    	</tr>
                        
                        
                    
 		    <%
		
		List<Books> list = (List<Books>) request.getSession().getAttribute("list");
		 if (!list.isEmpty()) {
		%>
		
		<%
			Iterator<Books> iterator = list.iterator();
				int i = 0;
				while (iterator.hasNext()) {
					i++;
					Books book = iterator.next();
		%>
		
						<tr class="center">
							<td><%=i %></td>
							<td><%=book.getBookcode()%></td>
							<td><%=book.getBookname()%></td>
							<td><%=book.getAuthor()%></td>
							<td><%=book.getDataadded()%></td>
							  <td>
							  <a href="<%= request.getContextPath()%>/Deleted?id=<%=book.getBookcode() %>" class="btn btn-primary">Delete</a>
								<a href="<%=request.getContextPath()%>/editpage?id=<%=book.getBookcode()%>" class="btn btn-primary">Edit</a>
							</td> 
						</tr>
			   

		<%
			}
		%>
                   </table>
			</div>
		</div>
		</div>
		<%
		} 
		%>   
</body>
</html>