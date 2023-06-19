import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import commonLocators from "../../pages/commonLocators.json"
import GenericActions from "../../utilities/genericActions";
import WebElement from "../../helpers/webElement";

const webElement = new WebElement();
const generics = new GenericActions();

Given('user logs in with {string} credentials', (Role) => {
    cy.Doctor()
})

Given('user navigates to Page type', (element) => {
    webElement.shouldBeVisible(element)
})

