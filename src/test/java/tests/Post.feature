Feature: Post API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read("response1.json")

  #Simple post request
  Scenario: Post Demo 1
    Given url 'https://reqres.in/api/users'
    And request 
    When method POST
    Then status 201
    And print response

  #post with Background
  Scenario: Post Demo 2
    Given path '/users'
    And request {"name": "Raksha RN","job": "Software Test Engineer"}
    When method POST
    Then status 201
    And print response

  #post with assertions
  Scenario: Post Demo 3
    Given path '/users'
    And request {"name": "Raksha RN","job": "Software Test Engineer"}
    When method POST
    Then status 201
    And print response
    And match response == {"name": "Raksha RN","job": "Software Test Engineer","id": "#string","createdAt": "#ignore"}
    And print response

  #post with read response from file
  Scenario: Post Demo 4
    Given path '/users'
    And request {"name": "Raksha RN","job": "Software Test Engineer"}
    When method POST
    Then status 201
    And print response
    And match response == expectedOutput
    And print response

  #post with read request body from file
  Scenario: Post Demo 5
    Given path '/users'
    And def projectpath = karate.properties['user.dir']
    And print projectpath
    And def filepath = projectpath+'src/test/java/data/request1.json'
    And def requestBody = filepath
    And request requestBody
    When method POST
    Then status 201
    And print response
    And print response

  #post with read response from file
  Scenario: Post Demo 6
    Given path '/users'
    And def reqBody = read("request1.json")
    And set reqBody.job = 'Senior Test Engineer'
    And request reqBody
    When method POST
    Then status 201
    And print response
    And print response
