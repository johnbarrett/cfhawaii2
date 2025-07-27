component accessors="true"
{
	property name="firstName" type="string";
	property name="lastName" type="string";
	property name="instrument" type="string";

	public any function init( string firstName, string lastName, string instrument )
	{
		setFirstName( arguments.firstName );
		setLastName( arguments.lastName );
		setInstrument( arguments.instrument );

		return this;
	}

	public any function displayInfo()
	{
		return( "<p>#getFirstName()# #getLastName()# plays the #getInstrument()#</p>" );
	}
	
}
