public class AccountService {

    public static Account createAccount(String accName) {
        Account acc = new Account(
            Name = accName
        );
        insert acc;
        return acc;
        
    }
}