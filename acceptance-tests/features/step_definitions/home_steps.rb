Then(/^I will see "([^"]*)"$/) do |message|
  page.should have_content message
end

Given(/^I am a ordinary user$/) do

end

When (/^I visit the home page$/) do
  visit find_url
end
