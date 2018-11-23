<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<title>Book_Management_System</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Page Wrapper -->
			<div id="page-wrapper">
				<!-- Header -->
					<header id="header" class="alt">
						<jsp:include page="main_header.jsp"/>
					</header>
				<!-- Menu -->
					<nav id="menu">
						<jsp:include page="main_nav.jsp"/>
					</nav>
				<!-- Banner -->
					<section>
						<%
							String prm = request.getParameter("section");
							if(prm == null || prm.equals("")) prm = "main_section.jsp";
						%>
						<jsp:include page="<%=prm%>"/>
					</section>
				<!-- Footer -->
					<footer>
						<jsp:include page="main_footer.jsp"/>
					</footer>
			</div>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>