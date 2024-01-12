
Feature: Challenge 4


        Scenario: Username not provided
            Given I navigate to the page 'login'
              And I click on the element 'username'
             When I click the element 'login'
             Then a message is displayed 'user name must be specified'

        Scenario: Username provided
            Given I navigate to the page 'login'
              And I click on the element 'username'
             When I type my username "myusername"
              And I click on the element 'login'
              And no validation message is displayed

        Scenario: Password not provided
            Given I navigate to the page 'login'
              And I click on the element 'password'
             When I click the element 'login'
              And I click button 'login'
             Then element is displayed 'password must be specified'

        Scenario: Password provided
            Given I navigate to the page 'login'
              And I click on the element 'password'
             When I type my password "mypassword"
              And I click button 'login'
              And no validation message is displayed