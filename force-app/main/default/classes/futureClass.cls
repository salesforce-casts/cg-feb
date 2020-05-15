public class futureClass {

    
    
    //for sync apex the response time is 10 secs for async apex
    //the response time is more. 
    //REST API from Trigger, future annotation
    //You cannot use @future in Batch class; 100,000; 1000; 100
    //It cannot return anything
    
    
    @future
    public static void foobar(String i){
        System.debug(' >>>>>>> ' +i);

    }
    
}