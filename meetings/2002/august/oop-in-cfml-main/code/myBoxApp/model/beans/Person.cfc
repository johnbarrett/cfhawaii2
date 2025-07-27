component accessors=true {
	property person_id;
	property firstname;
	property lastname;
	property dao;

	// instead of a generic name like "dao", you could just use 
	// property personDao inject;
	// and remove the DAO from init()

	public any function init( numeric person_id=0, string firstname='', string lastname='', PersonDAO personDAO inject='PersonDAO' ) {
		variables.person_id = arguments.person_id;
		variables.firstname = arguments.firstname;
		variables.lastname  = arguments.lastname;
		variables.dao       = arguments.personDAO;
		
		return this;
	}

	/* alternative init() if you used the property "PersonDao":
	public any function init( numeric person_id=0, string firstname='', string lastname='' ) {
		variables.person_id = arguments.person_id;
		variables.firstname = arguments.firstname;
		variables.lastname  = arguments.lastname;
		
		return this;
	}
	*/

	public any function read() {
		// if you went for the property "personDao", 
		// you need to use this one here, of course
		// return variables.personDao.read( this );

		return variables.dao.read( this );
	}
}