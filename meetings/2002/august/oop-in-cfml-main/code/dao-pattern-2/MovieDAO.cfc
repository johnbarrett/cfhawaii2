component  accessors=true{
	property name="dsn";

	public MovieDAO function init( required string datasource inject ) {
		setDsn( arguments.datasource );

		return this;
	}


	public array function getByPerson( required numeric personId ){
		/* Again, query the database for movies 
			 we would use something like 
			 WHERE ownerId = arguments.personId
			 
			 I am returning an array here to avoid having to mock a query ;-)
		*/

		var movieList = [
				{ movieId: 1, director: "Spielberg, Steven", title: "Duel", year: 1971, ownerId: 1 }
			,	{ movieId: 2, director: "Spielberg, Steven", title: "Jaws", year: 1975, ownerId: 1 }
			,	{ movieId: 3, director: "Spielberg, Steven", title: "Indiana Jones and the Temple of Doom", year: 1984, ownerId: 1 }
			,	{ movieId: 4, director: "Spielberg, Steven", title: "A.I. Artificial Intelligence", year: 2001, ownerId: 1 }
			,	{ movieId: 4, director: "Spielberg, Steven", title: "Ready Player One", year: 2018, ownerId: 1 }
		];

		return movieList;
	}


}