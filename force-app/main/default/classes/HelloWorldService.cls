public with sharing class HelloWorldService {
    public static String getMessage() {
        String message1 = 'Hello, World! make a change';
        String message2 = 'Welcome to the GitHub Actions commit-based deployment demo';
        String message3 = 'GitHub Actions workflows worked sequentially';

        return message1 + ' ' + message2 + ' ' + message3;
    }
}
