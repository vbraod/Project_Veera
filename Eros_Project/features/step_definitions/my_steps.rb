require 'rest-client'
require 'json'
require 'rspec'
require "rails_helper"

Given (/^As_a_consumer_I_retrieve_all_the_get_info_from_typicode$/) do
  @response = RestClient.get "https://jsonplaceholder.typicode.com/posts"
  @response = JSON.parse(@response, :symbolize_names => true)
end

Then(/^validate_the_response_as_an_Array$/) do
  @response.is_a?(Array)
  expect(@response.length).to be(100)
  expect(@response).to have_attributes(size: 100)
end


And(/^I_validate_retrieved_response_successfully$/) do
  expect @response[0][:body].should include("quia et suscipit")
end