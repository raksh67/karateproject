Feature: To create Employee records

  Scenario Outline: To create an Empployee
    Given url 'https://reqres.in/api/users/2'
    And request {"name":<name>,"job":<job>}
    When method POST
    Then status 201
    And print response

    Examples: 
      | read('../testData/inputData.csv') |
