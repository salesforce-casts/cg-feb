global class AccountsBatch implements Database.Batchable<sObject>, Database.Stateful, Database.AllowsCallouts {

    global Database.QueryLocator start(Database.BatchableContext info){
    	//Here we will be using query locator
    	//You cannot fetch more than 50 million records 
    	//You cannot use inner queries in batch apex 
    	//[SELECT Id, (SELECT Id FROM Contact) FROM Account];
    	//fetch 100 records and we need to say that it 
    	//has to be split into 10 chuncks 
    	//[SELECT Id, Name FROM Account] //50K
    	string query = 'SELECT Id, Name FROM Account';
    	return Database.getQueryLocator(query);  
        
    }
    
    Integer i = 1;
    
    global void execute(Database.BatchableContext info, List<Sobject> teja){
        i = i* 10;
        System.debug(' 🚀 ' +i);
    }
    
    global void finish(Database.BatchableContext info){
        //If you have some email sending logic
        //If you want to notify someone
        
        
        //We can chain batch apex classes
    }
}