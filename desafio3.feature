
Feature: Fix My Gherkin (Challenge 3)

        Background:
            Given an insurance application has the following properties
                  | Property Name     |
                  | Make              |
                  | Model             |
                  | Manufactured Date |
                  | Hull Length       |

        Scenario: View properties for Dinghy
             When I view the insurance property for 'Dinghy'
             Then i should see the common properties for boat


        Scenario: View properties for Yatch
             When I view the insurance property 'Yatch'
             Then i should see the common properties for boat
              And i should see specific properties as follows
                  | Property Name |
                  | Hull Length   |
                  | Berths        |

        Scenario: View properties for Cruiser
             When I view the insurance property 'Cruiser'
             Then i should see the common properties for boat
              And i should see specific properties as follows
                  | Property Name |
                  | Hull Length   |
                  | Engine Size   |
                  | Fuel Type     |
                  | Berths        |
