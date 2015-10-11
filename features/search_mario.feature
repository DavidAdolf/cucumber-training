@mario
Feature: As a happy Wii-U player, I want to purchase Super Mario for Wii-U to have even more fun.

  @ebay
  Scenario: order the game on ebay
    Given I am on ebay
    Then Input field is loaded
    When I enter mario
     And I click on search
    Then Mario item are shown
    When I click on the first item
    Then The product page is opened


