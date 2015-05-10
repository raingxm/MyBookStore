When (/^I visit the home page$/) do
  visit 'http://localhost:8080'
end

Then(/^I will see "([^"]*)"$/) do |message|
  p message
end

Given(/^I am a ordinary user$/) do
  p "hello"
end