<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>CFCs</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		<link rel="icon" type="image/png" sizes="16x16" href="../images/favicon-16x16.png">
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="../index.cfm" class="logo"><strong>CF</strong> Hawaii</a>
									<ul class="icons">
										<li><a href="https://www.facebook.com/groups/4967687826621512" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="https://twitter.com/cfhawaii" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
										
							
									</ul>
								</header>

							<!-- Content -->
								<section>
									<header class="main">
										<h1>ColdFusion Components</h1>
									</header>

									

									<p>A ColdFusion component is basically a collection of functions that relate to a given entity, like for example, a customer. You could create a ColdFusion Component that is responsible for the programming logic regarding your customer records.

										For example, you could create one ColdFusion component called customer.cfc that contains five functions to perform database queries. One could create a new customer record, another function could update customer records, another to retrieve, one for deleting, and one for listing your customers.
										
										Other functions could be included too, but you get the idea. By doing this, you would have all your programming logic for customers in one place, which has got to be a good thing - you're effectively separating your presentation from your logic.</p>

									<hr class="major" />

									<h2>Benefits of using ColdFusion Components</h2>
									    <p><b>Security:</b> You can restrict access to a ColdFusion component and it's functions
										<p><b>Performance:</b> ColdFusion Components are faster. This is because they are compiled. Note that a ColdFusion component only has to be compilied the first time it is called. It will then be pre-compiled for all subesquent calls (unless you update the component, in which case it will compile once again)
										<p><b>Extensibility:</b> ColdFusion components can share methods with other ColdFusion components. You can also make them available to applications built in other languages by using SOAP or URL calls.
										<p><b>Reusability: </b>You can code your component so that it is a "black box" in that you can move it around without anything breaking - it's a standalone piece of code that accepts input and provides output. Also, generally, once you've called a component in a page, you can reuse it without having to call it again in that page.
										<p><b>Documentation: </b>ColdFusion Components are self documenting - they generate their own comments. This is based on the developer using the "Hint" attribute.

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
										<li><a href="../index.cfm">Homepage</a></li>
										<li><a href="../members.cfm">Members</a></li>
										<li><a href="../meetings.cfm">Meetings</a></li>
										<li><a href="../about.cfm">About Us</a></li>
										<li><a href="../contact.cfm">Contact Us</a></li>
										
									</ul>
								</nav>

							<!-- Section --><!-- Footer -->
								<footer id="footer">
									<p class="copyright">&copy; CF Hawaii. All rights reserved. 
										<img src="../images/adobe-user-group.png" width="280">
										<p> Hosting provided by CF DYnamics. 
										<img src="../images/logo.png" width="280">
								</footer>
							
							
						</div>
					</div>

			</div>

		<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/browser.min.js"></script>
			<script src="../assets/js/breakpoints.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>

			

	</body>
</html>