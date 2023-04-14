public class DlmDemo {
    public static void dmlInsertDemo_stndObj(){
        account acc = new account();
        acc.Name = 'softinnovas';
        insert acc;
        System.debug(acc);
    }

    public static void dmlInsertDemo_cstmObj(){
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Lean dml to batch 13';
        sp.Description__c = 'doing good everybody';
        insert sp;
    }

    public static void dmlupdateDemo_stndObj1(){
        account ac = new account();
        ac.name = 'Salesforce';
        System.debug('ac before inserting ' + ac);
        insert ac;
        System.debug('ac afer  insert called ' + ac);

        ac.name = 'Salesforcec Inc.';
        update ac;
        System.debug('ac after updated ' + ac);

    }

    public static void dmlUpdateDemo_stndObj3(){
        account acc = [SELECT id, name FROM Account WHERE name = 'softinnovas' LIMIT 1];
        
        acc.name ='SoftInnovas Inc.';
        acc.phone = '45859663157';

        update acc; 
    }
}