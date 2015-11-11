Feature: Using Google

  Scenario: Searching for fallout 4 release date 

    Given I am on google.com
    When I enter "fallout 4 release date"
    Then I should not see wrong release date as "October 21, 2015"
    And I should see release date as "November 10, 2015" 
