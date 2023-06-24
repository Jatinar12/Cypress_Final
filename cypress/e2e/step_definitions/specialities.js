import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import commonLocators from "../../pages/commonLocators.json"
import WebElement from "../../helpers/webElement";
import WebButton from "../../helpers/webButton";


const webElement = new WebElement();
const webButton = new WebButton();

Given('{string} button is {string}', (text, element) => {
    webElement.shouldBeVisible(commonLocators[element], text)
})

When("user clicks on the {string} button", (element) => {
    webButton.click(commonLocators[element])
})

Then("user is on {string} button", (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})

