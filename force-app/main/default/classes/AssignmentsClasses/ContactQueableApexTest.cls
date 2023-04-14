@isTest
public class ContactQueableApexTest {
    @isTest
    private static void testContactQueableApex(){
        List<Account> listAccount = new List<Account>();
        for(Integer i = 0 ; i < 200 ; i++){
            Account acc = new Account();
            acc.Name = 'Test Queable';
            acc.Active__c = 'Yes';
            listAccount.add(acc);
        }

        insert listAccount;
        
        Test.startTest();
        system.enqueueJob(new ContactQueableApex(listAccount));
        Test.stopTest();

        List<Account> accountWithContact = [SELECT Id, Active__c, (SELECT Id, lastName FROM Contacts) FROM Account WHERE Active__c = 'Yes'];
        system.assert(!accountWithContact.isEmpty());
    }
}