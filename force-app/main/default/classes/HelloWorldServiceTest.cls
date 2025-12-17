@isTest
public class HelloWorldService_Test {
    @isTest
    public static void testGetMessage() {

        // Call the method
        String result = HelloWorldService.getMessage();

        // Validate the result contains all messages
        System.assert(result.contains('Hello, World! make a change'));
        System.assert(result.contains('Welcome to the GitHub Actions commit-based deployment demo'));
        System.assert(result.contains('GitHub Actions workflows worked sequentially'));
        System.assert(result.contains('Now we have updated and reframed the CI/CD workflows'));
        System.assert(result.contains('This demo was really helpful'));

        // Ensure the string is not empty
        System.assertNotEquals('', result);
    }
}
