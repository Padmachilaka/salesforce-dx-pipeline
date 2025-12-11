@IsTest
private class HelloWorldServiceTest {

    @IsTest
    static void testGetMessageAndAdditionalMessage_FullCoverage() {
        Test.startTest();
        String resultMain = HelloWorldService.getMessage();
        String resultAdditional = HelloWorldService.getAdditionalMessage();
        Test.stopTest();

        System.assertNotEquals(null, resultMain);
        System.assert(resultMain.contains('Hello, World! make a change'));
        System.assert(resultMain.contains('Welcome to the GitHub Actions commit-based deployment demo'));
        System.assert(resultMain.contains('GitHub Actions workflows worked sequentially'));
        System.assert(resultMain.contains('Now we have updated and reframed the CI/CD workflows'));
        System.assert(resultMain.contains('Now checking the job executions for positive and negative scenarios where subsequent jobs run only if the preceding job succeeds.'));

        System.assertNotEquals(null, resultAdditional);
        System.assertEquals('This is an additional method for message retrieval.', resultAdditional);
    }
}
