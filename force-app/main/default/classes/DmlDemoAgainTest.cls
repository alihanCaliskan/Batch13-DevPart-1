@isTest
public class DmlDemoAgainTest {
    
    @isTest
    private static void testInsertStdObj () {
        DmlDemoAgain.dmlInsertDemo_stndObj();

        account acc = [SELECT id, Name FROM Account WHERE Name = 'softinnovas' LIMIT 1];
        system.assert(acc != null);
        system.assertEquals('softinnovas', acc.Name);
    }

    @isTest
    private static void testInsertCstObj(){
    DmlDemoAgain.dmlInsertDemo_cstmObj();

    List<Salesforce_Project__c> listSP = [SELECT id, name, project_name__c FROM Salesforce_Project__c WHERE Project_Name__c = 'Learn dml batch 13'];

    system.assertEquals(1, listSP.size());
    assert.areEqual(1, listSP.size());
    }

    @isTest
    private static void testUpdateDemo_stndObj3() {
        //1. prepare required data
        Account acc = new account();
        acc.Name = 'softinnovas';
        insert acc;
        
        //call method to test
        DmlDemoAgain.dmlUpdateDemo_stndObj3();

        //how can we verify?
        //assertion.
        //Fetch the updated record by SOQL
        Account updatedAcc =  [select id, name, phone from account limit 1];
        system.assertEquals('SoftInnovas Inc.', updatedAcc.Name);
        assert.areEqual('SoftInnovas Inc.', updatedAcc.Name );
        assert.areEqual('9556789451', updatedAcc.phone);
    }

    @istest
    private static void testInsertDemo_stndObj2() {
        //1. prepare required data
        Account acc = new account();
        acc.Name = 'Softinnovas';
        insert acc;

         
        //call method to test
        DmlDemoAgain.dmlInsertDemo_stndObj2();

        //how to verify?
        //soql
        contact c = [select id, lastname, accountid from contact where lastname = 'Biden'];
        //assertion
        assert.areEqual(acc.id, c.AccountId);
        system.assert(c != null);

    }
    
    @isTest
    private static void testInsertDemo_csmObj2() {
        //prepare data
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'test sp';
        insert sp;

        DmlDemoAgain.dmlInsertDemo_cstmObj2();

        //verify if ticket is created OR not.
        Salesforce_Ticket__c st = [select subject__c, priority__c, salesforce_project__c from 
            Salesforce_Ticket__c where Subject__c = 'create related record'];
        assert.areEqual(sp.id, st.Salesforce_Project__c);
    }
}