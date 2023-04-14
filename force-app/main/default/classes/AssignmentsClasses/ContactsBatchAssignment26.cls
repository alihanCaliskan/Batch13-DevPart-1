public class ContactsBatchAssignment26 implements Database.Batchable<SObject>, database.stateful{
    public Database.QueryLocator start(Database.BatchableContext bc) {
        Database.QueryLocator cont = Database.getQueryLocator([SELECT id, description FROM Contact]);
        return cont;
    }

    public void execute(Database.BatchableContext bc, list<contact> scope){
        List<Contact> listUpdatedContacts = new List<Contact>();
        for (Contact eachContact : scope) {
            eachContact.Description += ' This contact updated by Batch';
            listUpdatedContacts.add(eachContact);
        }

        if (!listUpdatedContacts.isEmpty()){
            update listUpdatedContacts;
        }
    }

    public void finish(Database.BatchableContext bc){
        System.debug('Batch is Over!');
    }
}