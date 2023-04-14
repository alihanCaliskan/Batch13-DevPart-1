@isTest 
public class SPTriggerHandlerTest {
    /*
    @isTest 
    private static void testCreateDefaultTicket(){

        List<Salesforce_Project__c> listSP = new List<Salesforce_Project__c> ();
        for (Integer i = 0; i < 5; i++) {
            Salesforce_Project__c sp = new Salesforce_Project__c();
            sp.Project_Name__c = 'Test SP';
            listSP.add(sp);
        }

        List<Salesforce_Ticket__c> newTickets = new List<Salesforce_Ticket__c>();
        for (Salesforce_Project__c eachSP : listSP) {
            //create new ticket here
            Salesforce_Ticket__c st = new Salesforce_Ticket__c();
            st.Subject__c = 'Default ST';
            st.Salesforce_Project__c = eachSP.id;
            st.Requested_by_date__c = date.today();
            newTickets.add(st);
        }

        if (!newTickets.isEmpty()) {
            insert newTickets;
        }

        newTickets = [SELECT Id, Name FROM Salesforce_Ticket__c];
        assert.isTrue(newTickets[0].id != null);
    }
    */

    @isTest
    private static void testFutureMethod() {
        //1. Data preparation.
        //create instance
        Salesforce_Project__c sp = new Salesforce_Project__c();
        //set field names
        sp.Project_Name__c = 'Learn TEST batch 13';
        sp.Description__c = 'doing good everybody';

        Salesforce_Project__c sp2 = new Salesforce_Project__c();
        //set field names
        sp2.Project_Name__c = 'Learn future TEST batch 13';
        sp2.Description__c = 'doing good everybody';

        List<Salesforce_Project__c> listSP = new List<Salesforce_Project__c>{sp, sp2};
        insert listSP;

        set<id> spIds = new set<id> {sp.id, sp2.Id};

        //2.0 
        Test.startTest();
        //2. Call method
        SPTriggerHandler.updateProjectDescription(spIds);
        //2.1
        Test.stopTest();

        //3. verification --> Assert
        List<Salesforce_Project__c> allSP = [select id, description__c from Salesforce_Project__c];
        for (Salesforce_Project__c s : allSP) {
            assert.isTrue(s.Description__c.contains('future'));
        }
    }


}