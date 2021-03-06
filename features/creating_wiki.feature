Feature: Creating wiki page
Given I am on the home page
And I want to create the wikis
When I follow Wiki
Then I should be able to create all the wikis

  Background: Signing up
    Given I am on the homepage
    When I follow "Sign up"
    And I fill in "Email" with "user@ticketee.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I select "International" from "User office"
    And I press "Sign up"
    Then I should see "GPI"
    And I should see "Logged in as user@ticketee.com"

  Scenario: Create the wikis
    Given I am on the new wiki page
    When I fill in "Job description wiki" with "Zappy"
    And I press "Update"
    Then I should see "Zappy"
