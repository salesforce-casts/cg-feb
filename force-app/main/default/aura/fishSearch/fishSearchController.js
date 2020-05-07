({
	handleSearch : function(component, event, helper) {
        
		var sText = component.get(' v.sText ');
        
        
        //1
        var action = component.get('c.search');
        
        //2
        action.setParams({
            searchText : sText
    	});
        
        //3
        action.setCallback(this, function(response){
            var state = response.getState();
            if (state === "SUCCESS") {
                var returnValue = response.getReturnValue();
                component.set( 'v.fish', returnValue);
                
                console.log(returnValue);
            }
        });

		//4.	        
        $A.enqueueAction(action);
    }  
})