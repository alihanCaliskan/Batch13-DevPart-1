trigger CaseTrigger on Case (before insert, before update) {
    System.debug('-----START-----');

    if(Trigger.isBefore){
        System.debug('Before insert case trigger called.');
        System.debug('Number of records is ' + trigger.size);
        CaseTriggerHandler.numberOfRecords = CaseTriggerHandler.numberOfRecords + trigger.size;
        CaseTriggerHandler.count ++;
        System.debug('Num of times trigger ran: ' + CaseTriggerHandler.count);
        System.debug('Num of records updated: ' + caseTriggerHandler.numberOfRecords);
    }
    System.debug('-----END-----');

}