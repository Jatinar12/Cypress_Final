import {Given,When,Then} from "@badeball/cypress-cucumber-preprocessor";
import WebButton from "../../helpers/webButton";
import GenericActions from "../../utilities/genericActions";
import CommonLocators from "../../pages/commonLocators.json";
import WebXpath from "../../helpers/webXpath";
import Urls from "../../urls/Urls.json";
import WebTextBox from "../../helpers/webTextBox";
import WebText from "../../helpers/webText";
import WebElement from "../../helpers/webElement";

const webButton = new WebButton();
const webTextBox = new WebTextBox();
const webXpath = new WebXpath();
const generics = new GenericActions();
const webText = new WebText();
const webElement = new WebElement();


Given('user navigates to the {string} page', (url)=> {
    generics.visit(Urls[url]);
}) 

When('user clicks on the {string}', (element) => {
    webButton.click(CommonLocators[element])
})

When('user enters value {string} in the {string} input field', (text, element) => {
    webTextBox.typeText(CommonLocators[element], text)
})

Then('user can view message {string}', (text) => {
    webXpath.shouldContainTextByXpath(text)
})

Given('the corresponding page appears with the expected elements: {string}', (elementIdentifier) => {
    let name = elementIdentifier.toString();
    let doctorName = name.split(",")
    for (let count = 0; count < doctorName.length; count++) {
        webText.verifyPartialText(elementIdentifier, doctorName[count]);
    }
})

Given('user is on {string} page', (Page) => {
    webElement.shouldBeVisible(Page)  
})

Then("User is on {string} {string}", function (pageNumber, elementIdentifier) {
    let identifier = `${CommonLocators[elementIdentifier]}:contains("${pageNumber}")`;
    webText.verifyExactAttribute(identifier, 'aria-current', 'true');
    webButton.click(identifier);
})
