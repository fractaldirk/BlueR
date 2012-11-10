Feature: Editing wiki page
Given I am on the home page
And I want to edit the wikis
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
    Given I am on the new wiki page
    When I fill in "Job description wiki" with "Zappy"
    And I press "Update"
    Then I should see "Zappy"

  Scenario: Editing wikis
    Given I am on the homepage
    When I follow image link "Wiki"
    Then I should see "Listing wikis"
    When I follow "Edit"
    Then I should see "Update my Wiki"
    And I fill in "Job description wiki" with "Here some content for the job description wiki"
    And I fill in "Competencies wiki" with "Here some content for the competencies wiki"
    And I fill in "Personal profile wiki" with "Here some content for the personal profile wiki"
    And I fill in "Dictionary wiki" with "Here some content for the dictionary wiki"
    And I press "Update"
    Then I should see "Here some content for the job description wiki"
    And I should see "Here some content for the dictionary wiki"
