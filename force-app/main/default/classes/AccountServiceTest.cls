@IsTest
public class AccountServiceTest {

    @IsTest
    static void testCreateAccount() {

        Test.startTest();
        Account acc = AccountService.createAccount('Test Account');
        Test.stopTest();

        System.assertNotEquals(null, acc.Id);

        Account accFromDb = [
            SELECT Name, Checklist_Date__c
            FROM Account
            WHERE Id = :acc.Id
        ];

        System.assertEquals('Test Account', accFromDb.Name);
        System.assertEquals(Date.today(), accFromDb.Checklist_Date__c);
    }
}
