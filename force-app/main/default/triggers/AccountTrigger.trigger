trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    //check if salesforceproject's trigger is enabled
    TriggerSwitch__c ts = TriggerSwitch__c.getInstance('account');
    if(!ts.enabled__c){
        return;
    }
    
    system.debug('--- trigger start ----');
    if (Trigger.isBefore) {
        AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        //call VIP update method.
        AccountTriggerHandler.updateVIPForAllContact(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }




    /*
    system.debug('--- trigger start ----');
    system.debug('==== trigger end ====');
    */

   /*
    system.debug('--- trigger start ----');
    Map<id, account> trgNewMap = trigger.newMap;//key = ID, value = record.
    Map<id, account> trgOldMap = trigger.oldMap;


    if (Trigger.isBefore && Trigger.isUpdate) {
        //set<id> accIds = trgNewMap.keySet();
        for (Id eachId : trgNewMap.keySet()) {
            account newAcc = trgNewMap.get(eachId);
            account oldAcc = trgOldMap.get(eachId);

            string newWebsite = newAcc.Website;
            system.debug('newWebsite is ===> ' + newWebsite);
            string oldWebsite = oldAcc.Website;
            system.debug('oldWebsite is ===> ' + oldWebsite);
            if (newWebsite != oldWebsite) {
                system.debug('For account ' + newAcc.Name + ', new WEBSITE is ' + newWebsite);
            }
        }
    }

    system.debug('==== trigger end ====');
*/

/*
trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('--- trigger start ----');

    Map<id, account> trgNewMap = Trigger.newMap;
    Map<id, account> trgOldMap = Trigger.oldMap;


    if (Trigger.isBefore && Trigger.isInsert ) {
        system.debug('==BEFORE INSERT==');
        system.debug('trigger.newMap -> ' + trgNewMap); //null -> ID is null, so Map<id, account> is ALSO NULL.
        system.debug('trigger.oldMap -> ' + trgoldMap); //null --> OLD is NULL.
    }
    if (Trigger.isAfter && Trigger.isInsert ) {
        system.debug('==AFTER INSERT==');
        system.debug('trigger.newMap -> ' + trgNewMap);//yes (not null)
        system.debug('trigger.oldMap -> ' + trgoldMap);//null -> no old record so oldmap is null.
    }
    if (Trigger.isBefore && Trigger.isUPdate ) {
        system.debug('==BEFORE Update==');
        system.debug('trigger.newMap -> ' + trgNewMap); //yes
        system.debug('trigger.oldMap -> ' + trgoldMap); //yes
    }
    if (Trigger.isAfter && Trigger.isUpdate ) {
        system.debug('==AFTER UPDATE==');
        system.debug('trigger.newMap -> ' + trgNewMap); //yes
        system.debug('trigger.oldMap -> ' + trgoldMap); //yes
    }
    


    system.debug('==== trigger end ====');
}
*/

    /*
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('trigger.old before insert --> ' + trigger.old);
    }

    if (Trigger.isafter && Trigger.isInsert) {
        system.debug('trigger.old after insert --> ' + trigger.old);
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('trigger.old before udpate --> ' + trigger.old);
    }

    if (Trigger.isafter && Trigger.isUpdate) {
        system.debug('trigger.old after update --> ' + trigger.old);
    }
     */

    /*list<account> newAccounts = trigger.new;
    if(Trigger.isAfter && Trigger.isInsert){
        System.debug('after trigger, new data --> ' + trigger.new);
        System.debug('anumber of records inserted/updated --> ' + newAccounts.size());
    
        for (account eachAccount : newAccounts){
            System.debug('*** account ID is ' + eachAccount.Id + ' account name is ' + eachAccount.Name);
        }
    }
    system.debug('==== trigger end ====');
    */

    /*
    if(Trigger.isBefore){
        System.debug('==> we are in BEFORE trigger.');
        if(Trigger.isInsert){
            System.debug('before insert trigger is called');
        }
        if(Trigger.isUpdate){
            System.debug('before update trigger is called');
        }
    }
    if(Trigger.isAfter){
        System.debug('==> we are in AFTER trigger.');
        if(Trigger.isInsert){
            System.debug('after insert trigger is called.');
        }
        if(Trigger.isUpdate){
            System.debug('after update trigger is called.');
        }
    }


    if(Trigger.isBefore && Trigger.isInsert){
        system.debug('before insert trigger called.');
    }
    if(Trigger.isAfter && Trigger.isInsert){
        system.debug('after insert trigger called.');
    }
    if(Trigger.isBefore && Trigger.isUpdate){
        system.debug('before update trigger called.');

    }
    if(Trigger.isAfter && Trigger.isUpdate){
        system.debug('after update trigger called.');

    }
    system.debug('==== trigger end ====');


    

    system.debug('-------');
    system.debug('.isInsert --> ' + trigger.isInsert);
    system.debug('.isUpdate --> ' + trigger.isUpdate);
    system.debug('-------');

    system.debug('-------');
    system.debug('.isBefore --> ' + trigger.isBefore);
    system.debug('.isAfter --> ' + trigger.isAfter);
    system.debug('-------');

    if(Trigger.isBefore){
        system.debug('before insert account trigger called.');
    }
    if(Trigger.isAfter){
        system.debug('after insert account trigger called.');
    }
    */

}