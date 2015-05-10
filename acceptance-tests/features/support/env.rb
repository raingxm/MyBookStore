require 'rspec/expectations'
require 'capybara/cucumber'

Capybara.default_driver = :selenium
Capybara.default_selector = :css
World(RSpec::Matchers)



