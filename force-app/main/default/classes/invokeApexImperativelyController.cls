public with sharing class invokeApexImperativelyController {
    public invokeApexImperativelyController() {

    }

    
    //ignore cacheable only when you invoke apex method imperatively
    @AuraEnabled
    public static string fooabr(){
        return 'Hey';
    }
}
