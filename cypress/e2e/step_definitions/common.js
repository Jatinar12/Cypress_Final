import {Given,When,Then} from "@badeball/cypress-cucumber-preprocessor";
import WebButton from "../../helpers/webButton";
import GenericActions from "../../utilities/genericActions";
import commonLocators from "../../pages/commonLocators.json";
import WebXpath from "../../helpers/webXpath";
import Urls from "../../urls/Urls.json";
import WebTextBox from "../../helpers/webTextBox";
import WebElement from "../../helpers/webElement";

const webButton = new WebButton();
const webTextBox = new WebTextBox();
const webXpath = new WebXpath();
const actions = new GenericActions();
const webElement = new WebElement();

Given('user navigates to the {string} page', (url)=> {
    actions.wait(2000);
    actions.visit(Urls[url]);
}) 

When('user clicks on the {string}', (elementIdentifier) => {
    actions.wait(3000);
    webButton.click(commonLocators[elementIdentifier])
})

When('user enters value {string} in the {string} input field', (text, elementIdentifier) => {
    webButton.focusClick(commonLocators[elementIdentifier])
    webTextBox.typeText(commonLocators[elementIdentifier], text)
})

Then('user can view message {string}', (text) => {
    webXpath.shouldContainTextByXpath(text)
})

Given('the corresponding page appears with the expected elements: {string}', (elementIdentifier) => {
    cy.wait(1000)
    let text = elementIdentifier.toString();
    let textArray = text.split(",")
    for (let count = 0; count < textArray.length; count++) {
        webXpath.shouldContainTextByXpath(textArray[count])
    }
})

Given('user is on {string} page', (Page) => {
    webElement.shouldBeVisible(Page)  
})

Given('{string} per page is {string}', (elementIdentifier,text) => {
    webElement.shouldBeVisible(commonLocators[elementIdentifier], text)
})

When('user clicks on the {string} field', (elementIdentifier) => {
    webXpath.clickByXpath("visibleText",elementIdentifier)
})

Then('user can view {string}', (text) => {
    webXpath.shouldContainTextByXpath(text)
})
