
Given(/^As a consumer, I retrieve all the get info from typicode$/) do
  @response = RestClient.get "https://jsonplaceholder.typicode.com/posts"
  @response = JSON.parse(@response, :symbolize_names => true)

end

Then(/^I receive a response code with HTTP Status Code {int}$/) do |int|
  expect @response.eval .should have_HTTP_code 200
end

And(/^I validate retrieved response successfully$/) do
  expect @response[:body].should include("quia et suscipit")
end

