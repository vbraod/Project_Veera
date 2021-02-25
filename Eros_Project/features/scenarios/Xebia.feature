@get_call
Feature: Retrieve Request details happy path

  @smoke @get_status
  Scenario: User can successfully retrieve Get details
    Given As a consumer I retrieve all the get info from typicode
    Then validate the response as an Array
    And I validate retrieved response successfully