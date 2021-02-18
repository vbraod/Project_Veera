Feature: Retrieve Request details happy path

  Scenario: User can successfully retrieve Get details
    Given As a consumer, I retrieve all the get info from typicode
    Then I receive a response code with HTTP Status Code 200
    And I validate retrieved response successfully