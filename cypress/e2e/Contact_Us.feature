@contact-us @regression

Feature: WebdriverUniversity - Contact Us Page



    Background: Pre Conditions
        Given I navigate to the webdriveruniversity homepage
        When I click on the contact us button


    Scenario: Valid Contact Us form Submission
        And I type a first name
        And I type a last name
        And I enter an email address
        And I type a comment
        And I click on the submit button
        Then I should be presented with a successful contact us submission message

    Scenario: Invalid Contact Us Form Submission
        And I type a first name
        And I type a last name
        And I type a comment
        And I click on the submit button
        Then I should be presented with a unsuccessful contact us submission message

    Scenario: Valid Contact Us form Submission - Using specific data
        And I type a specific first name "Sarah"
        And I type a specific last name "Woods"
        And I type a specific email address "sarahwoods123@mail.com"
        And I type a specific word "Texto de Teste" and number 55321 within the comment input field
        And I click on the submit button
        Then I should be presented with a successful contact us submission message

    @smoke
    Scenario Outline: Validate contact us page
        When I type a first Name <firstName> and a last Name '<lastName>'
        And I type a '<emailAddress>' and a comment '<comment>'
        And I click on the submit button
        Then I should be presented with header text '<message>'

        Examples:
            | firstName | lastName | emailAddress      | comment           | message                      |
            | John      | Jones    | johnjohn@mail.com | Hi my friends     | Thank You for your Message!  |
            | Leana     | Maria    | leana@mail.com    | Testing           | Thank You for your Message!  |
            | Grace     | hudson   | gracehudson       | Testing mail fail | Error: Invalid email address |