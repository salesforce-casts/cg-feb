({
	handleCallApexMethod : function() {
		//setp1
		var action = component.get("c.foobar");
        
        //setp3
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
        
            }
            
        });

		//step4        
        $A.enqueueAction(action);
	}
})