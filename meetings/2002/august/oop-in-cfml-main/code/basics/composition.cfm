<cfscript>
	a = new cfcs.Address( 'Some Place 1', 'D-12345', 'Berlin' );
	p = new cfcs.Person( 'Chris', 'Schmitz', a );
	writeDump( p );
</cfscript>
