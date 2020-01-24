@isTest
private without sharing class AnimalLocatorTest {
    @isTest
    static void animalGETTest(){
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        //HttpResponse response = AnimalLocator.getAnimalNameById(2);
        String response = AnimalLocator.getAnimalNameById(2);

        //String contentType = response.getHeader('Content-type');
        //String actualBody = response.getBody();
        String expectedBody = 'bear';
        
        //System.assertEquals(expectedBody, actualBody);
        System.assertEquals(expectedBody, response);
        //System.assert(200 == response.getStatusCode());
        //System.assert('application/json' == contentType);
    }
}
