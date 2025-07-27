<cfscript>
myBean = request.beanFactory.getInstance( 'person' ).setPerson_id( 1 );

writeDump( myBean.read() );

</cfscript>