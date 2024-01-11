
Feature: Fix my Gherkin

            Given I am logged in as a customer service agent
              And I am on the author record detail page
              And The record is in edit mode
              And I change the first name field to 'test1'
             When I click the Save button
             Then the record is updated