component accessors=true {
	property personId;
	property lastname;
	property firstname;
	property fullname;

	public any function init( required numeric personId, required string firstname, required string lastname ) {
		setPersonId( arguments.personId );
		setFirstname( arguments.firstname );
		setLastname( arguments.lastname );

		return this;
	}

	private void function make_full_name() {
		setFullname( getFirstname() & ' ' & getLastname() );
	}

	public string function getFullname() {
		make_full_name();

		return variables.fullname;
	}
}
