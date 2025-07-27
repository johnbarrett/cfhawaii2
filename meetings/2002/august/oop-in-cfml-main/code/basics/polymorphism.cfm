<cfscript>
	p = new cfcs.Person( 'Brad', 'Wood' );
	emp = new cfcs.Employee( 'Chris', 'Schmitz', 'Development', 'CFML Developer' );
</cfscript>
<cfoutput>
P: #p.getFullname()#<br />
E: #emp.getFullname()#

</cfoutput>