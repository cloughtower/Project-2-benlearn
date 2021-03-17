public class WeatherCallOut {
    @AuraEnabled
    public static Double getCallOutResponseContents(String url) {
    Http http = new Http();
    
    HttpRequest req = new HttpRequest();
    req.setEndpoint('https://community-open-weather-map.p.rapidapi.com/weather?q=London%2Cuk');
    req.setMethod('GET');
    req.setHeader('x-rapidapi-host', 'community-open-weather-map.p.rapidapi.com');
    req.setHeader('x-rapidapi-key', 'e8aedc2151msh274e54b32569449p115c03jsn5b0bcf511975');
    
    HttpResponse response = http.send(req);
        
        
        
   
    //Map <String, Object> results = (Map <String, Object>  ) JSON.deserializeUntyped(response.getBody());
        
    WeathertoApex objMain = WeathertoApex.parse(response.getBody());
    //Double temp = objMain.main.temp;
    Double temp=objMain.main.temp;
        
                                                        
    return temp;
    }  
    

}