@isTest
public class SoqlParentChildAssignmentTest {
    
    @TestSetup
    static void makeData(){

        Account acc = new account();
        acc.Name = 'SI test';
        acc.Industry = 'Energy';

        Account acc2 = new account();
        acc2.Name = 'AI test';
        acc2.Industry = 'Energy';

        Account acc3 = new account();
        acc3.Name = 'BI test';
        acc3.Industry = 'Banking';
        
        list<account> listAcc = new list<account>{acc, acc2, acc3};
        insert listAcc;

        Contact cont = new Contact();
        cont.LastName = 'ContactTest';

        Contact cont2 = new Contact();
        cont2.LastName = 'ContactTest2';

        Contact cont3 = new Contact();
        cont3.LastName = 'ContactTest3';
       
        List<contact> listCont = new List<contact>{cont, cont2, cont3};
       } 
    
       @isTest
       private static void printContAccTest(){
        List<Contact> listCont = [SELECT Id, Name, Account.Id, Account.Name FROM Contact];
        
        Test.startTest();
        SoqlParentChildAssignment.printContactAccounts();
        Test.stopTest();
        }

        @isTest
       private static void printAccContTest(){
        List<Account> listAcc = [SELECT Id, Name, (SELECT Id, Name FROM Contacts) FROM Account];
        
        Test.startTest();
        SoqlParentChildAssignment.printAccountContacts();
        Test.stopTest();
        }
}