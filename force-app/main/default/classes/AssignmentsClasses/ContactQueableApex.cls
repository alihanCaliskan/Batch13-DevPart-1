public class ContactQueableApex implements Queueable {
    List<Account> listAccount = new List<Account>();

    public ContactQueableApex(List<Account> listOfAccount) {
        listAccount = listOfAccount;
    }

    public void execute (QueueableContext createContforAcc){
        List<Contact> listContact = new List<Contact>();
        for(Account eachAccount : listAccount){
            Contact cont = new Contact();
            cont.LastName = 'Quable Assignment';
            cont.FirstName = 'Active Account Contact';
            cont.AccountId = eachAccount.Id;
            listContact.add(cont);
        }
        insert listContact;
    }
}