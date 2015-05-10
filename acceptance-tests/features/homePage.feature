Feature: Visit home page

  Scenario: visit home page and see welcome message
    Given I am a ordinary user
    When I visit the home page
    Then I will see "Welcome to our book Store"