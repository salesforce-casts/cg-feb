public class exploreCustomController {

    public void foobar(){
        
        List<Account> a = [SELECT Id, Name FROM Account LIMIT 5];
        
        List<Contact> con = [SELECT Id, FirstName FROM Contact WHERE AccountId IN :a];
        
        for(Contact c: con){
            c.FirstName = 'Mr/Mrs/Miss ' + c.FirstName;
        }
        
        update con;
    }
}