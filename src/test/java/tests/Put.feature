Feature: Put API Demo

  Scenario: Put demo 1
    Given url 'https://reqres.in/api/users/2'
    And request {"name": "Raksha RN","job": "Software Test Engineer"}
    When method PUT
    Then status 200
    And print response
