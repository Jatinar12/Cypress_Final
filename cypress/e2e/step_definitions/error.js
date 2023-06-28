import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import commonLocators from "../../pages/commonLocators.json"
import credentails from "../../fixtures/example.json"
import GenericActions from "../../utilities/genericActions";
import WebButton from "../../helpers/webButton";
import WebTextBox from "../../helpers/webTextBox";
import WebXpath from "../../helpers/webXpath";
const actions = new GenericActions();
const webButton = new WebButton();
const webTextBox = new WebTextBox();
const webXpath =new WebXpath();

Given('user logs in with {string} credentials', (role) => {
    actions.visit("/");
    webButton.click(commonLocators['login button'])
    webTextBox.typeText(commonLocators[`${role}_email`], credentails[`${role}_email`])
    webTextBox.typeText(commonLocators[`${role}_password`], credentails[`${role}_password`])
    webButton.click(commonLocators['submit button'])
})
