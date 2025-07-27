component accessors=true {
	property lastname;
	property firstname;
	property fullname;
	property address;

	public any function init(required string firstname, required string lastname, Address address=new Address() ) {
		setFirstname( arguments.firstname );
		setLastname( arguments.lastname );
		setAddress( arguments.address );

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
