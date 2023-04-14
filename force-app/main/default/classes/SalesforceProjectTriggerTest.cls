@isTest
public class SalesforceProjectTriggerTest {
    
    @isTest
    private static void testMethod1(){
        Salesforce_Project__c newSP = new Salesforce_Project__c();
        newSP.Project_Name__c = 'Test SP';
        insert newSP;
    }

    @isTest 
    private static void testMethod2(){
        Salesforce_Project__c newSP = new Salesforce_Project__c();
        newSP.Project_Name__c = 'Test SP';
        insert newSP;

        newSP.Project_Name__c = 'Test Update SP';
        update newSP;
    }
}