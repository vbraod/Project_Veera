require 'rest-client'
require 'json'
require 'rspec'
require "rails_helper"

Given (/^As a consumer I retrieve all the get info from typicode$/) do
  @response = RestClient.get "https://jsonplaceholder.typicode.com/posts"
  @response = JSON.parse(@response, :symbolize_names => true)
end

Then(/^validate the response as an Array$/) do
  @response.is_a?(Array)
  expect(@response.length).to be(100)
  expect(@response).to have_attributes(size: 100)
end

And(/^I validate retrieved response successfully$/) do
  expect @response[0][:body].should include("quia et suscipit")
end