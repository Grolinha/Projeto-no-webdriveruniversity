/// <reference types="cypress" />
import { When, Then } from "@badeball/cypress-cucumber-preprocessor";
import Button_clicks_PO from "../page_objects/Button_clicks_PO";


const buttonClicks_Page = new Button_clicks_PO();


When('I click on CLICK ME! Using WebElement', () => {
    buttonClicks_Page.clickMeUsingXpath();
    
    
})
When('I click on CLICK ME! Using JavaScript', () => {
    buttonClicks_Page.clickMeUsingJS();
    
})
When('I click on CLICK ME! Using Any locator', () => {
    buttonClicks_Page.clickMeUsingAnyLocator();
    
})

Then('I should be present with a header {string}', (message) => {
   
    buttonClicks_Page.Header_sucesso(message);
   
})
