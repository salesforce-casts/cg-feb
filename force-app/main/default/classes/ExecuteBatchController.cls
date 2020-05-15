public class ExecuteBatchController {
	
    public void handleBacth(){
        AccountsBatch ab = new AccountsBatch();
        Database.executeBatch(ab);
    }
}