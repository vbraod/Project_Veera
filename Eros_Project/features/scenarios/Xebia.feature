@get_call
Feature: Retrieve Request details happy path

  @smoke @get_status
  Scenario: User can successfully retrieve Get details
    Given As_a_consumer_I_retrieve_all_the_get_info_from_typicode
    Then validate_the_response_as_an_Array
    And I_validate_retrieved_response_successfully