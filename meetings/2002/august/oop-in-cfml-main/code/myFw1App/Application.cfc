component {
	
	this.name="my-crazy-fw1-app";
	// this mapping is only necessary, if DI/1 was 
	// NOT installed in the document root directory!
	this.mappings['/framework'] = expandPath( '/frameworks/di1' );
	
	public void function onRequest(string targetPage) {

		var diConfig = { constants: { datasource: 'myDSN' } };

		request.beanFactory = new framework.ioc( 'model', diConfig );

		include arguments.targetPage;

		return;
	}
}