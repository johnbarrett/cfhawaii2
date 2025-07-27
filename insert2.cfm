<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>About Us</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="index.cfm" class="logo"><strong>CF</strong> Hawaii</a>
									
									<ul class="icons">
										<li><a href="https://www.facebook.com/groups/4967687826621512" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="https://twitter.com/cfhawaii" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
										
							
									</ul>
								</header>

							<!-- Content -->
								<section>
									<header class="main">
										<h1>Thanks <cfoutput>#form.first_name#</cfoutput> signing up as a member</h1>
									</header>

									
									<cfquery name="Insert2">
    									INSERT INTO users(first_name, last_name, date)
    									VALUE("#form.first_name#", "#form.last_name#", "#CreateODBCDate(Now())#");
									</cfquery>


									
									<hr class="major" />

									

								</section>

						</div>
					</div>

				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">
							<!-- Search -->
								<section id="search" class="alt">
									<form method="post" action="#">
										<input type="text" name="query" id="query" placeholder="Search" />
									</form>
								</section>
							<!-- Menu -->
								<nav id="menu">
									<header class="major">
										
									</header>
									<ul>
										<li><a href="index.cfm">Homepage</a></li>
										<li><a href="members.cfm">Members</a></li>
										<li><a href="meetings.cfm">Meetings</a></li>
										<li><a href="about.cfm">About Us</a></li>
										<li><a href="contact.cfm">Contact Us</a></li>
										
									</ul>
								</nav>

							<!-- Section --><!-- Footer -->
								<footer id="footer">
									<p class="copyright">&copy; CF Hawaii. All rights reserved. 
										<img src="images/adobe-user-group.png" width="280">
								</footer>
							
							
						</div>
					</div>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

			

	</body>
</html>