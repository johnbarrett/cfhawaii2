component  accessors=true{
	property name="dsn";

	public any function init( required string datasource ) {
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
}