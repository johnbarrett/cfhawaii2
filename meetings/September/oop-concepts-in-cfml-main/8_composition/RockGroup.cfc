component accessors="true"
{
	property name="bandName" type="string";
	property name="genre" type="string";

	property name="person1" type="Musician";
	property name="person2" type="Musician";
	property name="person3" type="Musician";
	property name="person4" type="Musician";

	public any function init( string bandName, string genre )
	{
		setBandName( arguments.bandName );
		setGenre( arguments.genre );
		return this;
	}

	public any function showBandDetails() localmode='modern'
	{
		savecontent variable="txtOutput"
		{
			WriteOutput( "<div>#getBandName()# is a #getGenre()# band.</div>" );

			WriteOutput( person1.displayInfo() );
			WriteOutput( person2.displayInfo() );
			WriteOutput( person3.displayInfo() );
			WriteOutput( person4.displayInfo() );
		}

		return txtOutput;
	}
}