public class exploreAuraEnabledController {
    
    
    @AuraEnabled
    public static List<Account> foobar(String message, String greeting){
        System.debug(' 🚀 ' +message);
                System.debug(' 🚀 ' +greeting);
        return [SELECT Id, Name, Rating, Industry FROM Account];
    }
    
}