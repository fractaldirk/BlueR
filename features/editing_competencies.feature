Feature: edit and create competencies
Given I am on the home page
And I want to edit or create competencies
When I follow an existing position
Then I should be able to edit or create competencies


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
    Given I am on the new wiki page
    When I fill in "Job description wiki" with "Zappy"
    And I press "Update"
    Then I should see "Zappy"

      Scenario: Create competencies
        Given I am on the homepage
        When I follow "Captain America"
        Then I should see "Job Description"
        When I follow image link "Competencies"
        Then I should see "Functional competencies"
        When I follow "Edit"
        Then I should see "Identify competencies"
        When I follow "Add Competency"
        When I press "Save competencies"
        Then I should see "Competencies have been successfully updated"
