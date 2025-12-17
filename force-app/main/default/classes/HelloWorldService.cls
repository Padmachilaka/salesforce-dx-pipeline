public with sharing class HelloWorldService {
    public static String getMessage() {

        String message1 = 'Hello, World! make a change';
        String message2 = 'Welcome to the GitHub Actions commit-based deployment demo';
        String message3 = 'GitHub Actions workflows worked sequentially';
        String message4 = 'Now we have updated and reframed the CI/CD workflows';
        String message5 = 'Now checking the job executions for positive and negative scenarios where subsequent jobs run only if the preceding job succeeds.';

        return message1 + ' ' + message2 + ' ' + message3 + ' ' + message4 + ' ' + message5;
    }

    public static String getAdditionalMessage() {
        String msg = 'This is an additional method for message retrieval.';
        return msg;
    }
}
