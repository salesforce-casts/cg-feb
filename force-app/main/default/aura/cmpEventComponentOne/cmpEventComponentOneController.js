({
    handleReceiveData : function(component, event, helper) {
        var m = event.getParam('message');
        var g = event.getParam('greeting');
        
        component.set('v.message', m);
        component.set('v.greeting', g);
        
    }
})