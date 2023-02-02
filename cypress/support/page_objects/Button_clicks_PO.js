/// <reference types="cypress" />

import Base_PO from "./Base_PO";


class Button_clicks_PO extends Base_PO{
    elements = {
    //  comment_TextField : () => cy.get('textarea[name="message"]'),
    //  submit_Button : () => cy.get('[type="submit"]'),
      Header_sucesso: () => cy.xpath("//h4")
    }

    navigateTo_ButtonClicks_Page() {
        super.navigate("/Click-Buttons/index.html");
    }

    clickMeUsingXpath() {
        cy.xpath('//*[@id="button1"]').click();

    }
    clickMeUsingJS() {
        cy.get("#button2").click();
        
    }
    clickMeUsingAnyLocator() {

        cy.xpath('//*[@id="button3"]').contains("CLICK ME!").click();
        
    }
    Header_sucesso(expectedText) {
        this.elements.Header_sucesso().contains(expectedText);
        this.elements.Header_sucesso().invoke('text').should('include', expectedText);
    }
    
}

export default Button_clicks_PO;