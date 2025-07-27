component extends="wirebox.system.ioc.config.Binder" {
	function configure() {
		
		mapDirectory( "myBoxApp.model" );

		map( "datasource" ).toValue( "myDSN" );
	}
	
}