component {

	public PrimenumberLister function init() {
		return this;
	}

	/** lists all prime numbers below a given limit
	 * this is just an example for a JavaDoc-style comment
	 */
	public array function listPrimeNumbers ( numeric limit=10 ) {
			var primeNumbers = [];

			// we start with 2 because 1 is not a prime number
			for ( var number = 2; number <= arguments.limit; number++) {
					var isPrime = true;

					// it's sufficient to check all modulos from 2 to sqr( number )+1
					for ( var divisor = 2; divisor < sqr( number ) + 1; divisor++ ) {
							// check not only for remainder of division, but also if number is
							// not equal to divisor. Else we loose 2 as a prime number
							if ( number % divisor == 0 && number != divisor ) {
									isPrime = false;
									break;
							}
					}

					if ( isPrime ) {
							arrayAppend( primeNumbers, number );
					}
			}

			return primeNumbers;
	}
}