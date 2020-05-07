@isTest(seeAllData=true)
public class exploreCustomController_Test {
    static testMethod void foobarTest(){
        Account a = new Account();
        a.Name = 'Test Account';
        
        insert a;
        
        Contact c = new Contact();
        c.LastName = 'Test Contact';
        c.AccountId = a.Id;
        insert c;
        
        exploreCustomController e = new exploreCustomController();
        e.foobar();
        
    }
}