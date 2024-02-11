<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.connection.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ include file="AllCss.jsp"%>
<body>
	<%
	int newid = Integer.parseInt(request.getParameter("blogid"));
	Session s = FactoryProvider.getFactory().openSession();
	Blog b = s.get(Blog.class, newid);
	%>

	<br>
	<br>
	<div class="container w-50">
		<form action="UpdateServlet" method="POST">

			<div class="form-group">

				<input type="hidden" class="form-control" id="bid"
					value=<%=b.getBlogid()%> name="bid">
			</div>

			<div class="form-group">
				<label for="blogname">Blog Name</label> <input type="text"
					class="form-control" id="blogname" value=<%=b.getBlogname()%>
					name="bname">
			</div>

			<div class="form-group">
				<label for="content"> Blog Content:-</label>

				<textarea name="content" required id="content"
					placeholder="Enter your content here" class="form-control"
					style="height: 300px;"><%=b.getContent()%>
	</textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success">Update Blog</button>
			</div>
		</form>
	</div>

</body>
</html>