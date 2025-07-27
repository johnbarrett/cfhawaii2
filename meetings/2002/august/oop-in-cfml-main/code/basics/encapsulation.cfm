<cfscript>
	me = new cfcs.Person( 'Chris', 'Schmitz' );
	writeDump( me );
	writeOutput( me.getFullname() );
</cfscript>
