<cfquery name = "members" datasource = "cfhawaiiDBmain">
	SELECT user_id,first_name,last_name, email,joining_date
	FROM users
	ORDER BY user_id
</cfquery>
<cfdump var="#members#">
