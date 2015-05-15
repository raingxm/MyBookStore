Feature: As I book store user, I want to visit page display all kinds of
  books, so I can choose which one to buy or reading oneline.

  Scenario: user visit book store page, display list of books.
    Given I am a ordinary user
    When I visit Book Store page
    Then I will see "Books List"