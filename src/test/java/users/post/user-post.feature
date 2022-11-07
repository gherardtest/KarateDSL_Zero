Feature: Post user on reqres

  Background: #Variables Globales
    * url "https://reqres.in/"
    * path "api/users/"
    * request {  "name": "#(name)",  "job": "#(job)"  }
  # * def var = {  "name": "juan",  "job": "pilot"  } -- def: para declarar variables

  Scenario Outline: Post a user
    When method post
    Then status 201

    Examples:
    |  name     |  job      |
    |  gherard  |  leader   |
    |  carlos   |  doctor   |
    |  gustavo  |  teacher  |


  Scenario: Post a user without job
    Given request {  "name": "juan" }
    When method post
    Then status 201

  Scenario: Post a user with name invalid
    Given request {  "name": "$%&%",  "job": "pilot"  }
    When method post
    Then status 201