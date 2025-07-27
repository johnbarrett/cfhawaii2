<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>OOP & ColdFusion</title>
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
										<li><a href="https://twitter.com/cfhawaii" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="https://www.facebook.com/groups/4967687826621512" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
										
							
									</ul>
								</header>

							<!-- Content -->
								<section>
									<header class="main">
										<h1>OOP & ColdFusion</h1>
									</header>

									

									<p>Object-Oriented Programming is common term in programming language. It’s a vast concept but to sum it up in a single line, it is a set of concepts and techniques that make use of the “object” construct, to write more reusable, maintainable, and organized code. Objects are implemented differently in every language. In ColdFusion, we have ColdFusion Components (CFCs) that can be instantiated to create objects.<br>
									  Anyone who has ever studied OOP must know that there are four main concepts, which are:<br>
									  * Abstraction<br>
									  * Encapsulation<br>
									  * Inheritance<br>
									  * Polymorphism<br>
									  <strong>Abstraction</strong><br>
									  The main goal of abstraction is to handle complexities by hiding unnecessary details from user. Like when we drive a car, we are unaware of how the engine works. Abstraction is implemented in most languages by defining a class that has methods, properties &amp; constructors.<br>
								    In ColdFusion, class is simply a CFC. A CFC has private &amp; public properties as well as methods. Variables defined in ‘this’ scope of CFC are public, while those in ‘variable’ scope are accessible to CFC. You can also define variables that are private to methods by defining them in ‘local’ scope. CFCs can be instantiated by either using CreateObject() or the new operator.</p>
									<p><strong>Encapsulation</strong><br>
									  Encapsulation is the concept of keeping data &amp; the methods operating on this data in a single unit, i.e. class. This concept also involves information hiding. The basic idea is to bundle accessor methods with data that are not visible from outside of a class. Accessor methods are the methods that give read/write access to private data, commonly known as getter/setter methods.<br>
								  In ColdFusion, you can define accessors for CFC properties. ColdFusion can automatically generate accessors if you set the property ‘accessor’ as true for a CFC.</p>
									<p><strong>Inheritance</strong><br>
									  Inheritance is a way to reuse existing code, or a way to write code in one location that many objects can make use of. When an object of class B inherits from class A, object B contains all the code — that is, methods and data — from class A, plus all the code from object B.<br>
								  In ColdFusion, CFCs can extend to inherit functions &amp; properties. ColdFusion does not allow multiple inheritance but a CFC can implement multiple interfaces. Interfaces can be extended too.</p>
									<p><strong>Polymorphism</strong><br>
								  Polymorphism describes the concept that objects of different types can be accessed through the same interface. In most languages, polymorphism is implemented by ‘Method Overloading‘ &amp; ‘Method Overriding‘.</p>
									<p>In ColdFusion, we support ‘Method Overriding’. This means that a child CFC can override parent CFC’s method to to customize or completely replace the behavior of that method.</p>
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