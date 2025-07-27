component
{
    public any function init( required string firstName, required string lastName )
    {
        variables.firstName = arguments.firstName;
        variables.lastName = arguments.lastName;
        WriteOutput( "<p>CFC has been created!</p>" );

        return this;
    }

    public void function sayHello()
    {
        WriteOutput( "<p>Hello world from #variables.firstName# #variables.lastName#!</p>" );
    }

    private void function sayGoodbye()
    {
        WriteOutput( "<p>Goodbye from #variables.firstName# #variables.lastName#!</p>" );
    }
    
    public void function sayBothGreetings()
    {
        sayHello();
        sayGoodbye();
    }
    
}

