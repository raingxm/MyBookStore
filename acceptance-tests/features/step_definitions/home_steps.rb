Then(/^I will see "([^"]*)"$/) do |message|
  page.should have_content message
end

Given(/^I am a ordinary user$/) do

end

When (/^I visit the home page$/) do
  visit find_url
end


And(/^I will see "([^"]*)" link in the navigation$/) do |nav|
  find_link(nav)
end

When(/^I click "([^"]*)" link$/) do |link|
  click_link(link)
end

And(/^I will come book store page$/) do
  page.current_path.should have_content "/bookList"
end

And(/^I will back to Home page$/) do
  page.current_path.should have_content "/"
end