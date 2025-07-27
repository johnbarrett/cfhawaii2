component accessors=true {
	property person_id;
	property lastname;
	property firstname;
	property fullname;
	property dao;

	public any function init( numeric person_id=0, string firstname="", string lastname="", required PersonDao dao ) {
		setPerson_id( arguments.person_id );
		setFirstname( arguments.firstname );
		setLastname( arguments.lastname );
		setDao( arguments.dao );

		return this;
	}

	public Person function read(){
		return getDao().read( this );
	}

	private void function make_full_name() {
		setFullname( getFirstname() & ' ' & getLastname() );
	}

	public string function getFullname() {
		make_full_name();
		
		return variables.fullname;
	}
}
