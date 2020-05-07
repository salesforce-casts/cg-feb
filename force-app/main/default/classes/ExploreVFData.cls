public class ExploreVFData {
	
    public List<Account> accountList{set; get;}
    
    public void foobar(){
     	accountList = [SELECT Id, Name, Industry, Rating FROM Account];   
    }
}