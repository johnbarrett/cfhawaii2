<cfscript>

	rg = new RockGroup( "The Beatles", "rock" );

	mus1 = new Musician( "Paul", "McCartney", "bass" );
	rg.setPerson1( mus1 );

	mus2 = new Musician( "George", "Harrison", "electric guitar" );
	rg.setPerson2( mus2 );

	mus3 = new Musician( "John", "Lennon", "acoustic guitar" );
	rg.setPerson3( mus3 );

	mus4 = new Musician( "Ringo", "Starr", "drums" );
	rg.setPerson4( mus4 );

	WriteOutput( rg.showBandDetails() );

</cfscript>