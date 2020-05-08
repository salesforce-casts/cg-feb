({
	handleReceiveData : function(component, event, helper) {
        
        console.log('----');
        
        var m = event.getParam('message');
        var g = event.getParam('greeting');
        var l = event.getParam('location');
        
        
        component.set( 'v.message', m);
                component.set( 'v.greeting', g);
                component.set( 'v.location', l);
	}
})