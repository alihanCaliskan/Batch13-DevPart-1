List<Account>  listActiveAccounts = [SELECT name FROM Account WHERE active__c = 'Yes'];
ContactQueableApex cqa = new ContactQueableApex(listActiveAccounts);
id contId = system.enqueueJob(cqa);
