<cfscript>
	lister = new cfcs.PrimenumberLister();
	numberList = lister.listPrimeNumbers( limit=100 );
	writeDump( numberList );
	writeDump( lister );
	// we can not access any internal data of the class!!
	// writeOutput( pnc.primeNumbers ); <== this would cause an error
</cfscript>