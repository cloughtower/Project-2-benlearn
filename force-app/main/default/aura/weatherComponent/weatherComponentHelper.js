({
	getResponse : function(component, base) {
        var action = component.get("c.getCallOutResponseContents");
        action.setParams({
            "url": 'https://community-open-weather-map.p.rapidapi.com/weather?q=London%2Cuk'
        });
        action.setCallback(this, function(response) {
            console.log(response.getReturnValue());
                        console.log(response.getState());
            var state = response.getState();
            if(component.isValid() && state === "SUCCESS") {
                component.set("v.response", response.getReturnValue());
                console.log(response.getReturnValue());

                
                component.set("v.WeatherList", response.getReturnValue());
            }
        });
        
        
		$A.enqueueAction(action);
	}
})