component accessors=true {
	property movieId;
	property title;
	property director;
	property year;
	property ownerId;


	public Movie function init( numeric movieId=0, string title="", string director="", string year="", numeric ownerId=0 ){
		setMovieId( arguments.movieId );
		setTitle( arguments.title );
		setDirector( arguments.director );
		setYear( arguments.year );
		setOwnerId( arguments.ownerId );

		return this;
	}

}