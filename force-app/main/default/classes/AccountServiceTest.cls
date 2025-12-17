@IsTest
public class AccountServiceTest {

    @IsTest
    static void testCreateAccount() {

        // Start Test Context
        Test.startTest();

        // Call method under test
        Account acc = AccountService.createAccount('Test Account');

        Test.stopTest();

        // Verify Account was created
        System.assertNotEquals(null, acc.Id, 'Account Id should be created');

        Account accFromDb = [
            SELECT Id, Name
            FROM Account
            WHERE Id = :acc.Id
        ];

        // Assertions
        System.assertEquals('Test Account', accFromDb.Name);
    }
}