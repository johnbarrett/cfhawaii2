component accessors=true {
	property street_address;
	property zipcode;
	property city;

	public any function init( string street_address='', string zipcode='', string city='' ){
		setStreet_address( arguments.street_address );
		setZipcode( arguments.zipcode );
		setCity( arguments.city );

		return this;
	}

}