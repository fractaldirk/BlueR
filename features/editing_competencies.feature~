Feature: edit and create competencies
Given I am on the home page
And I want to edit or create competencies
When I follow an existing position
Then I should be able to edit or create competencies

  Background: Creating new position
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

      Scenario: Create competencies
        When I follow "Captain America"
        Then I should see "Job Description"
        When I follow image link "Competencies"
        Then I should see "Functional competencies"
        When I follow "Edit"
        Then I should see "Competencies"
        When I follow "Add Competency"
        When I fill in the following attributes
          |Knowledge and or experience in pizza baking|
