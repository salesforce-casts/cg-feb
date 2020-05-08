({
	handleSendData : function(component, event, helper) {
		//3.1
        var cgEvent = $A.get('e.c:cgAppEvent');
        
        cgEvent.setParams({
            message: 'Hey!!',
            greeting: 'Welcome',
            location: 'Hyderabad'
        });

        cgEvent.fire();
	}
})