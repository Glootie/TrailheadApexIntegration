public with sharing class AnimalLocator {

    public static String getAnimalNameById(Integer n){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + n);
        request.setMethod('GET');
        HttpResponse response = http.send(request);        
        Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
        Map<String, Object> animal = (Map<String, Object>) results.get('animal');
        String name = (String) animal.get('name');
        return name;
    }
}
