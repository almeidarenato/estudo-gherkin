
Feature: Fix My Gherkin (Challenge 2)

            Given I have an "author" record with the following values on the fields :
                  | fields      | value    |
                  | 'firstname' | 'bob'    |
                  | 'surname'   | 'jones'  |
                  | 'author'    | 'active' |
            #   And surname with value jones
            #   And the author record is active
             When I click the save button
             Then the record is updated