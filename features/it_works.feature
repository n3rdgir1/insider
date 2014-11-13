  Feature:
    Cucumber works

  Scenario: cukes work and rake
    Given the app is initialized
    When I visit the site
    Then I see it is a rails app
