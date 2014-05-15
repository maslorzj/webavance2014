<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<link href="<c:url value="/resources/bd.css" />" rel="stylesheet"
	type="text/css" media="screen" />
<title>Listing bds</title>
</head>
<body>
	<div class="container">
		<h1>BibliBD</h1>
		<a href="NewBd">Add a BD into the BibliBD</a>
		<table class="normal-table">
			<thead>
				<tr>
					<th>ISBN</th>
					<th>Editor</th>
					<th>Title</th>
					<th>Author name</th>
					<th>Author firstname</th>
					<th>Illustrator name</th>
					<th>Illustrator firstname</th>
					<th>Language</th>
					<th>Publication date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="record" items="${bibliBd}">
					<tr>
					<tr>
						<td>${record.value.isbn}</td>
						<td>${record.value.editor}</td>
						<td>${record.value.title}</td>
						<td>${record.value.authorName}</td>
						<td>${record.value.authorFirstname}</td>
						<td>${record.value.illusName}</td>
						<td>${record.value.illusFirstname}</td>
						<td>${record.value.language}</td>
						<td>${record.value.publishDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>