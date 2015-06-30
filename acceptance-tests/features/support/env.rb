require 'rspec/expectations'
require 'capybara/cucumber'

Capybara.default_driver = :selenium
Capybara.default_selector = :css
Capybara.default_wait_time = 60

$myBookStoreUrl = 'http://localhost:8080/'

def find_url(path='')
  $myBookStoreUrl + path
end