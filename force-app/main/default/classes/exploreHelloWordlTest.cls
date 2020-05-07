@isTest
private class exploreHelloWordlTest {
    static testMethod void foobarTest() {
        
        //1. Install dependencies 
        //2. Invoke the method
        
        Account a = new Account();
        a.Name = 'Test';
        
        insert a;
        
        ExploreVFData e = new ExploreVFData();
        e.foobar();
    }
}