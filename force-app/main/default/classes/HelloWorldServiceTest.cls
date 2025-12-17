@IsTest
private class HelloWorldServiceTest {

    @IsTest
    static void testGetMessage() {
        Test.startTest();
        String result = HelloWorldService.getMessage();
        Test.stopTest();

        System.assertNotEquals(null, result);
        System.assert(result.contains('Hello, World! make a change'));
        System.assert(result.contains('Now checking the job executions'));
    }
}
