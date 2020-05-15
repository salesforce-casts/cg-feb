public class queueableController implements Queueable {

    public void execute(QueueableContext context){
        
        //business logic
        List<Account> a = [SELECT Id, Name FROM Account];
        
        for(Account acc : a){
            acc.Name = acc.Name + ' - Updated';
        }
        
        update a;
        
        System.enqueueJob(new queueableContactController());
    }
}