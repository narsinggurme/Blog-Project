<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add blog..</title>
</head>
<body>
	<%@ include file="AllCss.jsp"%>
	<br>
	<div class="container w-50">
	<form action="AddServlet" method="post">

		<div class="form-group">
			<label for="blog_name">Blog Name</label> <input type="text"
				class="form-control" id="blog_name" placeholder="Enter your blog" name="bname">
		</div>

		<div class="form-group">
			<label for="content">Blog content</label> 
			   
			<textarea name="content" required id="content"
				placeholder="Enter your content here..." class="form-control"
				style="height: 300px;" name="content">
			</textarea>

		</div>
		<div class="container text-center">
		<button type="submit" class="btn btn-success">Submit</button>
		</div>
	</form>
	</div>
</body>
</html>