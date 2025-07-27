<cfscript>
	dao = new PersonDAO( 'myDSN' );
	p   = new Person( 1, '', '', dao );
	writeDump( p );
	writeDump( p.read() );
	writeDump( p.getFullname() );
</cfscript>