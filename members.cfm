<!--- Default Params --->
<cfparam name="form.first_name" default="">
<cfparam name="form.last_name" default="">
<cfparam name="form.member_email" default="">
<cftry>

<cfset dataSourceUsed = "cfhawaiiDBmain" />
<cfset isError = false />
<cfset errorArray = [
	'first_name_error' = '',
	'last_name_error' = '',
	'member_email_error' = ''
	] />

<!---- Fetch all of the members --->
<cfquery name ="getAllMembers" datasource="#dataSourceUsed#">
	SELECT user_id,first_name,last_name,email,joining_date
	FROM users
	ORDER BY user_id
</cfquery>


	<!--- Submit the form of current page --->
	<cfif structKeyExists(form, "members_form_submit")>
	    <cfif not len(trim(form.first_name))>
			<cfset errorArray['first_name_error'] = 'Please enter your first name.' />
			<cfset isError = true />
	    </cfif>

	    <cfif not len(trim(form.last_name))>
	      <cfset errorArray['last_name_error'] = 'Please enter your last name.' />
	      <cfset isError = true />
	    </cfif>

	    <cfif not len(trim(form.member_email))>
	      <cfset errorArray['member_email_error'] = 'Please enter your email.' />
	      <cfset isError = true />
	    <cfelseif not isValid("email", form.member_email)>
	    	<cfset errorArray['member_email_error'] = 'Please enter valid email address.' />
	      	<cfset isError = true />
	    </cfif>

	    <cfif isError EQ false>
	    	<cfquery name ="checkEmailExists" datasource="#dataSourceUsed#">
				SELECT *
				FROM users
				WHERE email = <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.member_email#" />
				ORDER BY user_id
			</cfquery>

			<cfif checkEmailExists.RECORDCOUNT>
				<cfset errorArray['member_email_error'] = 'Email already exists.' />
	      		<cfset isError = true />
			</cfif>
	    </cfif>

	    <cfif isError EQ false>
	    	<cfset transactionCompleted = false />

	      	<!---- Insert the record into database --->
		    <cfquery result="qResult" datasource="#dataSourceUsed#">
		        INSERT INTO users
		        (
		            first_name,
					last_name,
					email,
					joining_date
		        )
		        VALUES
		        (
		            <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.first_name#">
		            , <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.last_name#">
		            , <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.member_email#">
		            , <cfqueryparam cfsqltype="cf_sql_timestamp" value="#Now()#">
		        )
		    </cfquery>

		    <cfif qResult.RECORDCOUNT GT 0>
		    	<cfset transactionCompleted = true />
		    </cfif>
	      	<cfset form.FIRST_NAME = "" />
	      	<cfset form.LAST_NAME = "" />
	      	<cfset form.MEMBER_EMAIL = "" />
	    </cfif>
	</cfif>

	<cfcatch type="any">
	    <!--<cfdump var="#cfcatch#" abort="true" />-->
		<cfset transactionCompleted = false />
	</cfcatch>
</cftry>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Members</title>
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
			.alert-success {
			  padding: 11px;
			  background-color: #09841a;
			  color: white;
			  margin-bottom: 10px;
			  border-radius: 10px;
			}

			.alert-danger {
			  padding: 11px;
			  background-color: #f44336;
			  color: white;
			  margin-bottom: 10px;
			  border-radius: 10px;
			}

			.closebtn {
			  margin-left: 15px;
			  color: white;
			  font-weight: bold;
			  float: right;
			  font-size: 30px;
			  line-height: 20px;
			  cursor: pointer;
			  transition: 0.3s;
			}

			.closebtn:hover {
			  color: black;
			}
			.form_error {
				color :  red;
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
							<a href="index.cfm" class="logo"><strong>CF</strong> Hawaii</a>
							<ul class="icons">
								<li><a href="https://twitter.com/cfhawaii" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
								<li><a href="https://www.facebook.com/groups/4967687826621512" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
							</ul>
						</header>

						<!-- Content -->
						<section>
							<header class="main">
								<h1>Members</h1>
							</header>

							<cfif isDefined("transactionCompleted") && transactionCompleted>
								<div class="alert-success alert-box1">
								  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
								  You have been registered successfully.
								</div>
							<cfelseif isDefined("transactionCompleted") && NOT transactionCompleted>
								<div class="alert-danger alert-box1">
								  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
								  Something went wrong. Please try again.
								</div>
							</cfif>

							<h3>Not a member? Register below</h3>
							<cfoutput>
							<form method="post" action="">
								<div class="row gtr-uniform">
									<div class="col-6 col-12-xsmall">
										<input type="text" name="first_name" id="first_name" placeholder="First Name" value="#form.first_name#" />
										<span class="form_error">#errorArray['first_name_error']#</span>
									</div>
									<div class="col-6 col-12-xsmall">
										<input type="text" name="last_name" id="last_name" value="#form.last_name#" placeholder="Last Name" />
										<span class="form_error">#errorArray['last_name_error']#</span>
									</div>

									<div class="col-6 col-12-xsmall">
										<input type="email" name="member_email" id="member_email" value="#form.member_email#" placeholder="Your Email" />
										<span class="form_error">#errorArray['member_email_error']#</span>
									</div>

									<!-- Break -->
									<div class="col-12">
										<ul class="actions">
											<li><input type="submit" value="Sign Up" name="members_form_submit" class="primary" /></li>
										</ul>
									</div>
								</div>
							</form>
							</cfoutput>
							<hr class="major" />
					  		<div class="table-wrapper">
							  	<table class="alt">
								  	<thead>
									  	<tr>
										  <th>First Name</th>
										  <th>Last Name</th>
										  <th>Email</th>
										  <th>Joining Date</th>
									  	</tr>
								  	</thead>
								  	<tbody>
								  		<cfoutput>
								  		<cfif getAllMembers.RECORDCOUNT GT 0>
								  			<cfloop query="getAllMembers">
											<tr>
												<td>#getAllMembers.first_name#</td>
												<td>#getAllMembers.last_name#</td>
												<td>#getAllMembers.email#</td>
												<td>#DateFormat(getAllMembers.joining_date,"mmmm d,Y")#</td>
											</tr>
											</cfloop>
										<cfelse>
											<tr style="text-align:center;">
												<td colspan="4" >No Record Found.</td>
											</tr>
										</cfif>
										</cfoutput>
								  	</tbody>
							  	</table>
						  	</div>
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

						<!-- Section -->


						<!-- Section -->

						<!-- Footer -->
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
	<script type="text/javascript">
		<cfoutput>
			#toScript(transactionCompleted, "transactionCompleted")#
		</cfoutput>
		if(typeof transactionCompleted !== 'undefined') {
			setTimeout(() => {
			  	window.location = "members.cfm";
			}, 3000);
		}
	</script>
	</body>
</html>