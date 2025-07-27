<cfscript>
	movieDao = new MovieDAO( 'myDSN' );
	personDao = new PersonDAO( 'myDSN' );
	personService = new PersonService( personDao, movieDao );
	person = personService.getPersonById( 1 );
	writeDump( personService.getMoviesOfPerson( person ) );
</cfscript>