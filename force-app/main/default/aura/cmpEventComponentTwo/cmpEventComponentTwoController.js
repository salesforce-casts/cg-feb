({
	handleSendData : function(component, event, helper) {
		//3.1
        //var a = $A.get('c.C:appEventName');
		var c = component.getEvent('cgCmpEvent');
        
        //3.2
        c.setParams({
            message: 'HEY!!!',
            greeting: 'Am trying to implement component Event'
        });
        
        //3.3
        c.fire();
	}
})