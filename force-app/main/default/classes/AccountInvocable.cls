public with sharing class AccountInvocable {
    
    @InvocableMethod(label = 'Close Related Opportunities'
                     category = 'Account')
    public static void closeOpportunities(List<Id> accountIds){

        List<Opportunity> opps = [SELECT Id, StageName 
                                    FROM Opportunity
                                    WHERE AccountId IN: accountIds 
                                    AND StageName NOT IN ('Closed Won', 'Closed Lost')
                                    ];
        if(!opps.isEmpty()){
            for (Opportunity eachOpp : opps) {
                eachOpp.StageName = 'Closed Lost';
            }
            update opps;
        }
    }
}