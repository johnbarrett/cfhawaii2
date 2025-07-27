component accessors=true {
	property personDao;
	property movieDao;

	public PersonService function init( required PersonDao personDAO, required MovieDAO movieDao ){
		setPersonDao( arguments.personDao );
		setMovieDao( arguments.movieDao );

		return this;
	}

	public Person function getPersonById( required numeric personId ){
		var q = personDao.getById( arguments.personId );
		return new Person( q.personId, q.firstname, q.lastname );
	}

	public array function getMoviesOfPerson( required Person person ){
		return  getMovieDao().getByPerson( arguments.person.getPersonId() );
	}
	
}