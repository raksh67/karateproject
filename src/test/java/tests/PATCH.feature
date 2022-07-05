Feature: Patch API Demo

Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
  Scenario: Patch Demo 1

  Scenario: Patch demo 1
    Given url 'https://reqres.in/api/users/2'
    And request {"name": "Raksha RN","job": "QA"}
    When method PUT
    Then status 200
    And print response
