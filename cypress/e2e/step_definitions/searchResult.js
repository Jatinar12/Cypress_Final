import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import commonLocators from "../../pages/commonLocators.json"
import WebTextBox from "../../helpers/webTextBox";
import WebElement from "../../helpers/webElement";
import WebButton from "../../helpers/webButton";
import GenericActions from "../../utilities/genericActions";

const webTextBox = new WebTextBox();
const webElement = new WebElement();
const webButton = new WebButton();
const actions = new GenericActions();

Given('{string} keyword is {string}', (element,text) => {
    webTextBox.typeText(commonLocators[element], text)
})

Given('search {string} is clicked', (element) => {
    webButton.click(commonLocators[element])
})

Given('{string} is {string}', (element,text) => {
    webTextBox.typeText(commonLocators[element], text)
    webTextBox.typeText(commonLocators[element], '{downarrow}')
    webTextBox.typeText(commonLocators[element], '{enter}')
})

Then('{string} should see {string}', (element,text) => {
    webElement.shouldBeVisible(commonLocators[element],text)
})

Then('Result contain {string} {string}', (element,text) => {
    webElement.shouldBeVisible(commonLocators[element], text)
})


Then('result page is move to dashboard page', () => {
    actions.checkUrl("/")
})
