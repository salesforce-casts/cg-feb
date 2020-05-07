public class ExploreInnerQuery {
    
    //static 
    //final; const 
    public final Integer age = 10; 
    
    public List<Account> accountList{set;get;}
    
    public void fetchRecord(){
        //1000 records out of which 100 are created by me and I 
        //have access to only Name and Rating	
        accountList = [SELECT Id, Name,Rating, Industry,(SELECT Id, Name FROM Contacts) FROM Account];
        
        for(Account a: accountList){
            System.debug(' 🚀 ' +a.Name);
            System.debug(' 🚀 ' +a.Industry);
            System.debug(' 🚀 ' +a.Rating);
            for(Contact c : a.contacts){
                System.debug(' 🚀 ' +c.Name);
            }
            
        }
        
    }
    
}