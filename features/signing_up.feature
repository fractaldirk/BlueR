Feature: Signing up
In order to be attributed for my work
As a user
I want to be able to sign up

  Scenario: Signing up
    Given I am on the homepage
    When I follow "Sign up"
    And I fill in "Email" with "user@ticketee.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I select "International" from "User office"
    And I press "Sign up"
    Then I should see "GPI"
    And I should see "Logged in as user@ticketee.com"
