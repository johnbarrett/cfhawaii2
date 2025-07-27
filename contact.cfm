<!--- Default Params --->
<cfparam name="form.demo_name" default="">
<cfparam name="form.demo_email" default="">
<cfparam name="form.demo_message" default="">
<cfset showForm = true>
<cfset isError = false />
<cfset errorArray = [
		'name_error' = '',
		'email_error' = '',
		'message_error' = '',
		'captcha_error' = ''	
		] />

<!--- Function to create randon captcha --->
<cffunction name="makeRandomString" returnType="string" output="false">
	<cfset var chars = "23456789ABCDEFGHJKMNPQRS">
	<cfset var length = randRange(4,6)>
	<cfset var result = "">
	<cfset var i = "">
	<cfset var char = "">
				    
	<cfscript>
	  for(i=1; i <= length; i++) {
	      char = mid(chars, randRange(1, len(chars)),1);
	      result&=char;
	  }
	</cfscript>
				    
	<cfreturn result>
</cffunction>

<cftry>
	<!--- Submit the form of current page --->
	<cfif structKeyExists(form, "sendcomments")>
	    <cfset error = "">
	    

	    <cfif not len(trim(form.demo_name))>
			<cfset errorArray['name_error'] = 'Please enter your name.' />
			<cfset isError = true />
	    </cfif>
	    
	    <cfif not len(trim(form.demo_email))>
	      <cfset errorArray['email_error'] = 'Please enter email address.' />
	      <cfset isError = true />
	    <cfelseif not isValid("email", form.demo_email)>
	    	<cfset errorArray['email_error'] = 'Please enter a valid email address.' />
	    	<cfset isError = true />
	    </cfif>

	    <cfif not len(trim(form.demo_message))>
	      <cfset errorArray['message_error'] = 'Please enter a message.' />
	      <cfset isError = true />
	    </cfif>
	    
	    <cfif not len(form.captcha)>
	      <cfset errorArray['captcha_error'] = 'Please must enter text captcha.' />
	      <cfset isError = true />
	    <cfelseif hash(form.captcha) neq form.captchaHash>
	    	<cfset errorArray['captcha_error'] = 'Text Captcha is wrong.' />
	    	<cfset isError = true />
	    </cfif>

		<!--- johnbarr@hawaii.edu --->
	    <cfif len(trim(form.demo_email)) && isValid("email", form.demo_email) && isError EQ false> 
	      <cfmail 
					to="johnbarr@hawaii.edu" 
					from="john@cfhawaii.net"
					subject="Hawaii ColdFusion User Group Message" 
					wraptext="75"
					type="text/html">
					From: #form.demo_name# (#form.demo_email#)<br />
					Comments: #form.demo_message#
	      </cfmail>
	      <cfset showForm = false>
	      <cfset form.demo_name = "">
	      <cfset form.demo_message = "">
	      <cfset form.demo_email = "">
	      <cfset form.captcha = "">
	    <cfelse>
	    	<cfset error = error & "Something went wrong.">
	    </cfif>
	</cfif>
	
	<cfcatch type="any">
		<cfdump var="Something went wrong. Please try again." abort="true" />
	</cfcatch>
</cftry>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Contact Us</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="title" content="Hawaii ColdFusion User Group">
		<meta name="description" content="The Hawaii ColdFusion Users Group holds regular meetings every month on the last Friday of the month.">
		<meta name="keywords" content="ColdFusion, Hawaii ColdFusion, Hawaii ColdFusion User Group, User Group, ColdFusion User Group,">
		<meta name="robots" content="index, follow">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="language" content="English">
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">

		<style type="text/css">
			.form_error {
				color :  red;
			}
			.display_inline_flex {
				display: inline-flex;
			}
		</style>
	</head>
	<body class="is-preload">
		<!-- Wrapper -->
		<div id="wrapper">
			<!-- Main -->
			<div id="main">
				<div class="inner">
					<!-- Header -->
					<header id="header">
						<a href="index.cfm" class="logo"><strong>Contact</strong>Us</a>
						<ul class="icons">
							<li><a href="https://twitter.com/cfhawaii" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="https://www.facebook.com/groups/4967687826621512" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
				
						</ul>
					</header>

					<!-- Content -->
					<section>
						<header class="main">
							<h1>Contact Us</h1>
						</header>
						<!--- <cfif isError EQ false>
						   <cfoutput>
						   	<p class="form_error">
						   		Form Submitted
						   	</p>
						   </cfoutput>
					   	</cfif> --->
						<!-- Form -->
						<!--- <h3>Form</h3> --->
						<form method="post" action="#">
							<cfoutput>
							<div class="row gtr-uniform">
								<div class="col-6 col-12-xsmall">
									<input type="text" name="demo_name" id="demo_name" placeholder="Name" value="#form.DEMO_NAME#"/>
									<span class="form_error">#errorArray['name_error']#</span>
								</div>
								<div class="col-6 col-12-xsmall">
									<input type="email" name="demo_email" id="demo_email" placeholder="Email" value="#form.DEMO_EMAIL#"/>
									<span class="form_error">#errorArray['email_error']#</span>
								</div>
								
								<!-- Break -->
								<div class="col-12">
									<textarea name="demo_message" id="demo_message" placeholder="Enter your message" rows="6">#form.demo_message#</textarea>
									<span class="form_error">#errorArray['message_error']#</span>
								</div>

								<div class="col-6 col-12-xsmall">
									<cfset captcha = makeRandomString() />
							       	<cfset captchaHash = hash(captcha) />
							       	
							       	<input type="hidden" name="captchaHash" value="#captchaHash#">
							       	
							       	<input type="text" name="captcha" id="captcha" placeholder="Enter Text (Case Senative)" >
							       	<span class="form_error">#errorArray['captcha_error']#</span>
								</div>

								<div class="col-6 col-12-xsmall display_inline_flex">
									<cfimage action="captcha" width="157" height="35" text="#captcha#" size="8" />
								</div>

								<!-- Break -->
								<div class="col-12">
									<ul class="actions">
										<li><input type="submit" value="Send Message" class="primary" name="sendcomments" /></li>
										
									</ul>
								</div>
							</div>
							</cfoutput>
						</form>
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
					<!-- Footer -->
					<footer id="footer">
									<p class="copyright">&copy; CF Hawaii. All rights reserved. 
										<img src="images/adobe-user-group.png" width="280">
										<p> Hosting provided by CF DYnamics. 
										<img src="images/logo.png" width="280">
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