public class HelloWorldService {

    // Static method to get greeting message
    public static String getMessage(Boolean isFormal) {
        if(isFormal) {
            return 'Hello, World!';
        } else {
            return 'Hi World!';
        }
    }
}