component extends="Entertainer"
{
	property name="authorName";
	property name="bookTitle";

	
	public any function publishBook()
	{
		WriteOutput( "<p>The author is publishing a book.</p>" );
	}

}