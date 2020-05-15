public with sharing class SecondLWCController {
    public SecondLWCController() {

    }

    @AuraEnabled(cacheable=true)
    public static List<Account> foobar(){
        System.debug(' 🍕 ');
        return [SELECT Id, Name FROM Account WHERE Id = '0012222222234da'];        
    }

    @AuraEnabled(cacheable=true)
    public static List<Account> accountList(){
        System.debug(' 🍕 ');
        return [SELECT Id, Name, Rating, Industry FROM Account];
    }

 

}