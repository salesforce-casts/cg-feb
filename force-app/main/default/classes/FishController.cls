public class FishController {
    
    @AuraEnabled
    public static List<Fish__c> foobar(){
        return [SELECT Id, Name, Price__c, Available__c FROM Fish__c];
    }
    
    @AuraEnabled
    public static List<Fish__c> search(String searchText){ 
        
        searchText = '%' + searchText + '%';
        
        return [SELECT Id, Name, Price__c, Available__c FROM Fish__c WHERE Name LIKE :searchText];
    }
}