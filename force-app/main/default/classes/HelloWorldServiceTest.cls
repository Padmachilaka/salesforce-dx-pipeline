@isTest
private class HelloWorldServiceTest {
    @isTest static void testGetMessage() {
        String expected = 'Hello, World! make a chage';
        String actual = HelloWorldService.getMessage();
        System.assertEquals(expected, actual, 'Test failed: Message did not match expected value');
    }
}
