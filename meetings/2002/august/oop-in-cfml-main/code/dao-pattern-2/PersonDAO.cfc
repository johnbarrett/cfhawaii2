component  accessors=true{
	property name="dsn";

	public PersonDAO function init( required string datasource ) {
		setDsn( arguments.datasource );

		return this;
	}


	public any function read( Person person ) {
		/* in a real application we would query the database here
		SELECT firstname, lastname 
		FROM   person 
		WHERE  person_id = #arguments.person.getPerson_id()#
		*/

		arguments.person.setFirstname( 'Chris' );
		arguments.person.setLastname( 'Schmitz' );

		return arguments.person;
	}

	public query function getById( required numeric personId ){
		/* in a real application we would query the database here
		SELECT firstname, lastname 
		FROM   person 
		WHERE  person_id = #arguments.person.getPerson_id()#
		*/

		var qPerson = queryNew( "personId,firstname,lastname" );
		queryAddRow( qPerson );
		querySetCell( qPerson, "personId", 1 );
		querySetCell( qPerson, "firstname", "Steven" );
		querySetCell( qPerson, "lastname", "Spielberg" );
	
		return qPerson;
	}
}