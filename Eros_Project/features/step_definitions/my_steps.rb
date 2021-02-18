require 'rest-client'
require 'json'
require 'rspec'


Given(/^As a consumer, I retrieve all the get info from typicode$/) do
  @response = RestClient.get "https://jsonplaceholder.typicode.com/posts"
  # @response = JSON.parse(@response, :symbolize_names => true)

end
Then(/^I receive a response code with HTTP Status Code$/) do
    expect @response.should have_HTTP_code status_code
end


And(/^I validate retrieved response successfully$/) do
  expect @response[:body].should include("quia et suscipit")
end


