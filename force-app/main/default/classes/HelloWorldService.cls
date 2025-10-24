public class HelloWorldService {

    // Static method to get greeting message
    public static String getMessage(Boolean isFormal) {
        if(isFormal) {
            return 'Hello, World! make a chage';

        } else {
            return 'Hi World!';
        }
    }
}