public class AccountService {

    public static Account createAccount(String accName) {
        Account acc = new Account(
            Name = accName,
            Checklist_Date__c = Date.today()   // REQUIRED FIELD
        );
        insert acc;
        return acc;
    }
}
