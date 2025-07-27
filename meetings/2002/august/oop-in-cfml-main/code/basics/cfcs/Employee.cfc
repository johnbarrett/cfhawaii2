component extends='Person' accessors=true {
	property department;
	property position;

	public any function init( string firstname="", string lastname="", string department="", string position ) {
		super.init(argumentcollection = arguments);
		setDepartment( arguments.department );
		setPosition( arguments.position );

		return this;
	}

	public string function getFullname() {
		return make_full_name();
	}
	
	private string function make_full_name() {
		return getLastname() & ', ' & getFirstname();
	}

}