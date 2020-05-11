({
    handleShowToast : function(component, event, helper) {
        
        
        component.find("edit").get("e.recordSave").fire();
        
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            "title": "Success!",
            "message": "The record has been updated successfully.",
            "type": "success"
        });
        toastEvent.fire();
    }
})