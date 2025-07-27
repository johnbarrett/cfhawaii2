<cfscript>
myBean = request.beanFactory.getBean( 'person' ).setPerson_id( 2 );

writeDump( myBean.read() );

</cfscript>