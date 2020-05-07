trigger exploreHelloWorldTrigger on Gadget__c (before insert) {
    
    for(Gadget__c g : Trigger.new){
        g.Issued__c = true;
        g.Issued_to__c = '';
        g.Twitter_Profile_URL__c = ''; 
    }
    
}