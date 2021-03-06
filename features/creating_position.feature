Feature: Index page
Given I am on the home page
And I want to create a new position
When I follow New Position
Then I should be able to create a new position

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


  Scenario: Creating new position
    Given I am on the homepage
    When I follow "New Position"
    Then I should see "Create a new position"
    And I fill in "Job title" with "Captain America"
    And I select "International" from "NRO"
    And I fill in "Department" with "Campaigns"
    And I select "Yes" from "Is this an unique position?"
    And I select "Full time (1)" from "How many FTE requires this position?"
    And I select "Permanent" from "Is this a permanent position?"
    And I press "Create position"
    Then I should see "GPI"
    And I should see "Captain America"
