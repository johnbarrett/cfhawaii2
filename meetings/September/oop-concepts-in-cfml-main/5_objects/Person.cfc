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
}

