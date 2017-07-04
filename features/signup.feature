Feature: Sign up as a new user to the FL app
  In order to test sign up
  As an Tester in Development
  I want to be able to sign up with a new user

  Scenario: Signing up as a new user
    Given I am on the homescreen of the ios app
    When I complete the sign up of as an user
    Then I see the welcome message
