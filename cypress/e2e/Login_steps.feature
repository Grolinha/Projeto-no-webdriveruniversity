@login @regression
Feature: WebdriverUniversity - Login Page


    Background: Pre Conditions
        When I wait for 0 seconds
        Given I navigate to the webdriveruniversity login page
        When I click on the login button


    Scenario Outline: Valid Login Submission and Invalid Login Submission
        And I type a username <username>
        And I type a password <password>
        And I click on the login button
        Then I should be presented with an alert box which contains text '<expectedAlertText>'

        Examples:
            | username  | password     | expectedAlertText    |
            | webdriver | webdriver123 | validation succeeded |
            | webdriver | webdriver    | validation failed    |
