component {
	this.name="my-crazy-box-app";
	// this mapping is only necessaary, if Wirebox was 
	// NOT installed in the document root directory!
	this.mappings['/wirebox'] = expandPath( '/frameworks/wirebox' );

	public void function onRequest( required string targetPage ) {

		request.beanFactory = new wirebox.system.ioc.Injector( 'myBoxApp.config.Wirebox' );

		include arguments.targetPage;

		return;
	}
}