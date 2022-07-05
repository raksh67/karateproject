Feature: GET API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  #Simple Get Request
  Scenario: Get Demo 1
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

  #Get with Background
  Scenario: Get Demo 2
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response
    
