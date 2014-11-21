Feature:
  Uploading character sheets

  Background:
    Given I am signed in
    When I go to my characters

  Scenario: File upload
    When I upload my chacter sheet
    Then I see that it was a success

  Scenario: File types
    When I upload something that is not a character sheet
    Then I see that is not the correct file type
