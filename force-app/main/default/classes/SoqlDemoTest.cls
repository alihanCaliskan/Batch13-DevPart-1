@isTest
public class SoqlDemoTest {

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

        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'test sp';
        insert sp;

        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        st.Salesforce_Project__c = sp.id;
        st.Subject__c = 'subject st';
        st.Priority__c = 'High';
        insert st;



    }   

    @isTest
    private static void testChildToParent1() {//3 account records here
       
        List<account> listAcc = [select id, name, industry from account];

        List<Contact> listContact = new list<contact>();
        for (Integer i = 0; i < 300; i++) {
            contact c = new contact();
            c.LastName = 'anything ' + i;

            if (i < 100) {
                c.accountid = listAcc[0].id;
            } else if(i < 200){
                c.accountid = listAcc[1].id;
            } else {
                c.AccountId = listAcc[2].id;
            }
            listContact.add(c);
        }
        insert listContact;

        //we want to reset gov limit before actually calling method
        Test.startTest();
        SoqlDemo.childToParent_SOQL1();
        Test.stopTest();
   }

   @isTest
   private static void testParentToChild() {
    //3 account records here.
        List<account> listAcc = [select id, name, industry from account];
        for (account eachacc : listAcc) {
            eachAcc.type = 'Customer - direct';
        }
        update listAcc;

        List<Opportunity> listOpp = new List<Opportunity>();
        for (Integer i = 0; i < 300; i++) {
            Opportunity opp = new Opportunity();
            opp.Name = 'test opp'+i;
            opp.StageName = 'Closed Won';
            opp.CloseDate = date.today();
            
            if (i < 100) {
                opp.AccountId = listAcc[0].id;
            } else if (i < 200){
                opp.AccountId = listAcc[1].id;
            } else {
                opp.AccountId = listAcc[2].id;
            }
            listOpp.add(opp);
        }
        insert listOpp;

        Test.startTest();
        SoqlDemo.parentToChild_SOQL1();
        Test.stopTest();

   }

   @isTest
   private static void testParentToChild_SOQL2(){
    Salesforce_Project__c sp = [SELECT id, name FROM Salesforce_Project__c LIMIT 1];
    Salesforce_Ticket__c st = [SELECT id, name, Priority__c FROM Salesforce_Ticket__c WHERE Priority__c = 'High' LIMIT 1];
    System.debug(st);
    Test.startTest();
    integer result = SoqlDemo.parentToChild_SOQL2();
    Test.stopTest();
    //assert.
    system.assertEquals(2, result);

}
}