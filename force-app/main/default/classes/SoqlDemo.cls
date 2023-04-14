public class SoqlDemo {
    public static void accountSOQL_1(){
        list<account> listAccount = [SELECT id, name FROM account];
        system.debug('list of accounts' + listAccount);
    }

    public static void accountSOQL_1_1(){
        account acc = [SELECT id, name, phone FROM account ORDER BY createddate DESC LIMIT 1];
        system.debug('account record ' + acc);
    }

    public static void accountSOQL_2(){
        account acc = [SELECT id, name, phone, website, AccountNumber FROM account ORDER BY createddate DESC LIMIT 1];
        system.debug('latest created account record ' + acc);
        //print phone, name, and accountnumber
        string aName = acc.Name;
        string aPhone = acc.Phone;
        system.debug('account name; ' + aName + 'website ' +
         acc.Website + ' account phone; ' + aPhone + 'account number; ' + acc.AccountNumber);
         //FATAL_ERROR|System.SObjectException: SObject row was retrieved via SOQL without querying the requested field: Account.Website
    }

    public static void accountSOQL_3(){
        list<account> listAccount = [SELECT id, name, phone, AccountNumber FROM account ORDER BY createddate DESC];
        //for each loop on the list.
        for (account eachAcc : listAccount){
            system.debug('--- each acc start ---' + listAccount);
            system.debug('each acc: ' + eachAcc);
            string accName = eachAcc.name;
            string accPhone = eachAcc.Phone;
            system.debug('accName ' + accName + ' phone ' + accPhone + ' accountnumber ' + eachAcc.accountnumber);
            system.debug('--- each acc end ---' + listAccount);
        }
    }

    public static void accountSOQL_Filter(){
        string accountName = 'GenePoint';
        list<account> listacc = [SELECT name, phone FROM account where name = :accountName];
        system.debug('filter 1; ' + listacc);
    }

    public static void accountSOQL_Filter(string accountName){
        list<account> listacc = [SELECT name, phone FROM account where name = :accountName];
        system.debug('filter 1; ' + listacc);
    }
    
    public static void childToParent_SOQL1(){
        list<contact> listContacts = [SELECT id, name, account.name, account.industry FROM contact WHERE account.industry = 'energy'];
        for (contact eachContact : listContacts){
            string accName = eachContact.account.name;
            System.debug('contact name is ' + eachContact.name + ', its account name is ' + accName + ' and acc industry is ' + eachContact.Account.Industry);
        }
    
    }

    public static void parentToChild_SOQL1(){
        List<account> listAcount = [SELECT name, type, annualrevenue, (SELECT name, amount from OpportunitieS where stagename = 'Closed Won') FROM Account WHERE type = 'customer - direct'];
        for (account eachAcc : listAcount){
            System.debug('account name is ' + eachAcc.name + ', its annual revenue is ' + eachAcc.AnnualRevenue);
            System.debug('---------');
            list<opportunity> eachAccOpp = eachAcc.Opportunities;
            for (Opportunity eachOpp : eachAccOpp){
                System.debug('opp name is ' + eachOpp.name + ' and amount is ' + eachOpp.Amount);
            }
            System.debug('_________');
        }
    }

    
    public static void parentToChild_SOQL2() {
        list<salesforce_project__c> listSP = [select id, name, project_name__c,
                                 (select subject__c, priority__c from salesforce_tickets__r) 
                                 from salesforce_project__c];
        //we need to print two things.
             //1. total number of tickets in each Project.
             //2. high priority tickets in each project.
        for (salesforce_project__c eachSP : listSP) {
             //get all tickets of each project in List<salesforce_ticket__c>
             list<salesforce_ticket__c> listST = eachSP.salesforce_tickets__r;
             
             //total number of tickets by using .size() method of list. 
                  //==> 1st requirement is Satisfied.
             integer totalTickets = listST.size();
             //2. high priority tickets
             integer highPriorityTickets = 0;
             //each ticket and check if priority is high
             for (salesforce_ticket__c eachST : listST) {
                  //checking priority == high
                  if (eachST.Priority__c == 'High') {
                       //increment the counter.
                       highPriorityTickets++;
                  }
             }
             system.debug('Project name is ' + eachSP.Project_Name__c + ', total tickets ' + totalTickets + ', hp tickets ' + highPriorityTickets);
        }
      
    }
   

}


