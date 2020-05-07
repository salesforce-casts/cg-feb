public class gadgetExtension {

    public List<Account> accountList{set;get;}
    
    public gadgetExtension(ApexPages.StandardController controller) {
        
    }
    
    public void foobar(){
        //we need to write the logic to query data
		//SOQL; SOSL
		//LIKE; WHERE;ORDER BY Name DESC;LIMIT 5;OFFSET 5
		accountList = [SELECT Id, Name, Rating, Industry FROM Account ORDER BY Name ASC LIMIT 5 OFFSET 5];
    }

}