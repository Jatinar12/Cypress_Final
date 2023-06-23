import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import commonLocators from "../../pages/commonLocators.json"
import WebElement from "../../helpers/webElement";
import WebButton from "../../helpers/webButton";
import WebText from "../../helpers/webText";

const webText = new WebText();
const webElement = new WebElement();
const webButton = new WebButton();

Given('user can view list of {string}', (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})   

When("user clicks on {string} {string}", function (elementIdentifier, pageNumber) {
    let identifier = `${commonLocators[elementIdentifier]}:contains("${pageNumber}")`;
    webButton.click(identifier);
})

When('User is on {string} page of {string}', (text,elementIdentifier) => {

    webText.getText(commonLocators[elementIdentifier],text)
})

When('user clicks on {string} page of {string}', (text,element) => {
    webButton.click(commonLocators[element],text)
})