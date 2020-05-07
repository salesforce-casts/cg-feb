@isTest
public class exploreHelloWorldTriggerTest {
    static testMethod void foobar(){
        
        Gadget__c g = new Gadget__c();
        g.Name = 'Test';
        g.Gadget_IMEI_No__c = 'Test IMEI';
        
        insert g;
    }
}