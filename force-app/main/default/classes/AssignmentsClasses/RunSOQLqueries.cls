public class RunSOQLqueries {
    public static void runQueriesC2P(){
        list<Contact> listContact = [SELECT name, Account.id, Account.name FROM Contact ];
        for (Contact eachContact : listContact){
            System.debug('Contact name is ' + eachContact.name +  '.Account ID is ' + eachContact.Account.id + '. Account name is ' + eachContact.Account.name + '.');
        }
    }

    public static void runQueriesP2C(){
        list<Account> listAccount = [SELECT name, (SELECT id, name FROM ContactS) FROM Account];
        for (Account eachAccount : listAccount){
            list<Contact> listAccountContact = eachAccount.contacts;
            for (Contact eachContact : listAccountContact){
                System.debug('Account name is ' + eachAccount.name + '. Contact ID is ' + eachContact.id + '. Contact name is ' + eachContact.name + '.');
            }
        }
    }
/*
//SELECT COUNT(id) FROM Contact WHERE Account.name = 'Apple'
    public static void totalContacts(){
        list<Contact> contactNames = [SELECT name, id FROM Contact WHERE Account.name in ('Apple', 'Meta', 'Tesla', 'Microsoft')];
        //list<Account> accountNames = [SELECT name, id, Account.name FROM Account WHERE Account.name in ('Apple', 'Meta', 'Tesla', 'Microsoft')];
        //integer totalNumber2 = database.countQuery('SELECT COUNT(id), Account.name FROM Contact GROUP BY Account.name HAVING Account.name in ('Apple', 'Meta', 'Tesla', 'Microsoft')');
        //list<string> deneme = [SELECT COUNT(id), Account.name FROM Contact GROUP BY Account.name HAVING Account.name in ('Apple', 'Meta', 'Tesla', 'Microsoft')];
        integer totalNumber = contactNames.size(); 
        for (Contact totalNumOfContacts : contactNames){
            //list<Contact>
            system.debug(totalNumOfContacts.name + totalNumber);
        }
    }
*/

}