<cfscript>

	act1 = new Actor( "Tom", "Cruise", 45 );
	act1.reciteFromScript();
	act1.paySAGDues();
	act1.getPaid();
	act1.goOnVacation();

	auth1 = new Author( "Judy", "Blume", 50 );
	auth1.publishBook();
	auth1.getPaid();
	auth1.goOnVacation();

	mus1 = new Musician( "David", "Bowie", 68 );
	mus1.playInstrument();
	mus1.getPaid();
	mus1.goOnVacation();

</cfscript>