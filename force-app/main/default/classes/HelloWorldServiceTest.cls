@isTest
private class HelloWorldServiceTest {
    @isTest
    static void testGetMessage() {
        String expected = 
            'Hello, World! make a change ' +
            'Welcome to the GitHub Actions commit-based deployment demo ' +
            'GitHub Actions workflows worked sequentially';

        String actual = HelloWorldService.getMessage();

        System.assertEquals(
            expected, 
            actual, 
            'Test failed: Message did not match expected value'
        );
    }
}
