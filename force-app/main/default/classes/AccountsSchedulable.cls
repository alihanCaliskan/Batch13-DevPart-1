public class AccountsSchedulable implements Schedulable{
    public void execute(SchedulableContext sc){
        AccountsBatch ab = new AccountsBatch();
        Database.executeBatch(ab, 21);
    }
}