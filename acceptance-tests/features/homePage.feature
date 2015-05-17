Feature: User visit home page of the book store,
  want to see welcome message and navigation.

  Scenario: visit home page and see welcome message
    Given I am a ordinary user
    When I visit the home page
    Then I will see "Welcome to our book Store"
    And I will see "Home" link in the navigation
    And I will see "My Cart" link in the navigation
    When I click "Book Store" link
    And I will come book store page
    When I click "Home" link
    And I will back to Home page