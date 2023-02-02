Feature: WebdriverUniversity - Button Clicks page


    Background: Pre Conditions
        Given I navigate to the webdriveruniversity homepage
        When I click on the button clicks page

    Scenario: Valid Button clicks
        And I click on CLICK ME! Using WebElement
        Then I should be present with a header '<message>'
        Examples:
            | message          |
            | Congratulations! |

    Scenario: Valid JS clicks
        And I click on CLICK ME! Using JavaScript
        Then I should be present with a header '<message>'
        Examples:
            | message                 |
            | Well I think it is..... |

    Scenario: Valid Any clicks
        And I click on CLICK ME! Using Any locator
        Then I should be present with a header '<message>'

        Examples:
            | message                                                    |
            | Well done! the Action Move & Click can become very useful! |