@IsTest
public class HelloWorldServiceTest {

    @IsTest
    static void testGetMessage() {
        // Test formal greeting
        String formalMessage = HelloWorldService.getMessage(true);
        System.assertEquals('Hello, World!', formalMessage);
        
        // Test informal greeting
        String informalMessage = HelloWorldService.getMessage(false);
        System.assertEquals('Hi World!', informalMessage);
    }
}