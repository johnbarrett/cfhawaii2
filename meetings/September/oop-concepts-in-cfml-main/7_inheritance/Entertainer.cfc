component accessors="true"
{
	property name="firstName";
	property name="lastName";
	property name="age";

	public any function init( string first, string last, numeric myage )
	{
		setFirstName( arguments.first );
		setLastName( arguments.last );
		setAge( arguments.myage );

		return this;
	}

	public any function getPaid()
	{
		WriteOutput( "<p>This person has been paid!</p>" );
	}

	public any function goOnVacation()
	{
		WriteOutput( "<p>This person is on vacation!</p>" );
	}

}
