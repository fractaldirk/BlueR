Feature: Index page
Given I am on the home page
And I want to create a new position
When I follow New Position
Then I should be able to create a new position

  Scenario: Creating new position
    Given I am on the home page
    When I follow "New Position"
    Then I should see "Create a new position"
    And I fill in "Job title" with "Captain America"
    And I select "International" from "NRO"
    And I fill in "Department" with "Campaigns"
    And I select "Yes" from "Is this an unique position?"
    And I select "Full time (1)" from "How many FTE requires this position?"
    And I select "Permanent" from "Is this a permanent position?"
    And I press "Create position"
    Then I should see "Listing positions"
    And I should see "Captain America"
