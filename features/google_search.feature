@google
Feature: As a Google user I would like to search random derp things


  Background:
    Given I have a browser instance

  @search
  Scenario: search derp things on google
   Given I am on google
   Then The google page is loaded
   When I enter random derp things
    And I clicked on search
    And I click on images
   Then I should see random derp things

