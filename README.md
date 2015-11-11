# Expample of using Cucumber+Capybara

```
git clone git://github.com//vmatiyko/remote-cucumber-example.git
cd remote-cucumber-example
bundle install
bundle exec cucumber
```

Which should produce output that looks something like:

```
Feature: Using Google

  Scenario: Searching for fallout 4 release date                   # features/google.feature:3
    Given I am on google.com                                       # features/step_definitions/google_steps.rb:1
    When I enter "fallout 4 release date"                          # features/step_definitions/google_steps.rb:5
    Then I should not see wrong release date as "October 21, 2015" # features/step_definitions/google_steps.rb:10
    And I should see release date as "November 10, 2015"           # features/step_definitions/google_steps.rb:14

1 scenario (1 passed)
4 steps (4 passed)
0m10.510s
```

