  Feature:
    Cucumber works

  Scenario: registration
    When I register
    Then I am welcomed

  Scenario: sign in
    Given I am signed in
    Then I am welcomed
    And I can sign out
