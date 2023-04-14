trigger Assignment17ContactTrigger on Contact (before update, after update) {
    system.debug('--- trigger start ----');

    system.debug('.isInsert --> ' + trigger.isInsert);
    system.debug('.isUpdate --> ' + trigger.isUpdate);

    if(Trigger.isBefore){
        System.debug('Before SBNC ==> Contact Record is asked to be updated!');
        System.debug('record that is asked to be updated ==> ' + trigger.new );
    }
    if(Trigger.isAfter){
        System.debug('After SBNC ==> Contact Record Update is saved but not committed!');
        System.debug('record that is updated ==> ' + trigger.new );
    }

    system.debug('==== trigger end ====');

}