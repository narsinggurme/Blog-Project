<%@page import="com.entities.Blog"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.connection.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>all blogs</title>
</head>
<body>
	<%@ include file="AllCss.jsp"%>
	<br>
	<div class="container w-75">
		<h1 class="text-uppercase text-center text-success">All Blogs:-</h1>
		<table class="table table-bordered w-75 p-4"
			style="margin-left: 100px">
			<tr>
				<th>Blog Id</th>
				<th>Blog Name</th>
				<th>Content</th>
				<td colspan="2">Action</td>
			</tr>
			<%
			Session s = FactoryProvider.getFactory().openSession();
			Query q = s.createQuery("from Blog");
			List<Blog> l = q.list();
			for (Blog b : l) {
			%>
			<tr>
				<td><%=b.getBlogid()%></td>
				<td><%=b.getBlogname()%></td>
				<td><%=b.getContent()%></td>
				<td class="text-primary"><a
					href="edit.jsp?blogid=<%=b.getBlogid()%>">Edit</a></td>
				<td style="color: red;"><a
					href="DeleteServlet?id=<%=b.getBlogid()%>">Delete</a></td>

			</tr>
			<%
			}
			%>
		</table>
	</div>
</body>
</html>