import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import commonLocators from "../../pages/commonLocators"
import WebElement from "../../helpers/webElement";
import WebButton from "../../helpers/webButton";
import WebText from "../../helpers/webText";

const webButton = new WebButton();

Given('user can view list of {string}', (elementIdentifier) => {
    const webElement = new WebElement();
    webElement.shouldBeVisible(commonLocators[elementIdentifier])
})   

When("user clicks on {string} {string}", function (elementIdentifier, pageNumber) {
    let identifier = `${commonLocators[elementIdentifier]}:contains("${pageNumber}")`;
    webButton.click(identifier);
})

When('User is on {string} page of {string}', (text,elementIdentifier) => {
    const webText = new WebText();
    webText.getText(commonLocators[elementIdentifier],text)
})

When('user clicks on {string} page of {string}', (text, elementIdentifier) => {
    webButton.click(commonLocators[elementIdentifier],text)
})