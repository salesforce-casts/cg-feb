public class ExecuteBatchController {
    
    public void handleBacth(){
        AccountsBatch ab = new AccountsBatch();
        Database.executeBatch(ab);
        
        ID jobID = System.enqueueJob(new queueableController());
        System.debug(' 🚀 ' +jobID);
        /*
        ID jobID = System.enqueueJob(new queueableController());
        System.debug(' 🚀 ' +jobID);
        
        ID jobID = System.enqueueJob(new queueableController());
        System.debug(' 🚀 ' +jobID);
        
        ID jobID = System.enqueueJob(new queueableController());
        System.debug(' 🚀 ' +jobID);
		*/
        
        // Depth or chaining is infinite provided you are not using dev orgs and trial ogrs. 
        // In a single transaction you cannot have more than 50 jobs. 
        
    }
}