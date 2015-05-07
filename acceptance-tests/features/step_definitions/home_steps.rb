When (/^I visit the home page$/) do
  p "hi"
end

Then(/^I will see "([^"]*)"$/) do |message|
  p message
end

Given(/^I am a ordinary user$/) do

end