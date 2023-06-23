import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import commonLocators from "../../pages/commonLocators.json"
import GenericActions from "../../utilities/genericActions";
import WebButton from "../../helpers/webButton";
import WebTextBox from "../../helpers/webTextBox";
import WebXpath from "../../helpers/webXpath";
const actions = new GenericActions();
const webButton = new WebButton();
const webTextBox = new WebTextBox();
const webXpath =new WebXpath();

Given('user logs in with {string} credentials', (role) => {
    if(role=="Patient") {
    actions.visit("/");
    webButton.click(commonLocators['login button'])
    webTextBox.typeText(commonLocators['email/Number'], "JFCAUIZX@gmail.com")
    webTextBox.typeText(commonLocators['password'], "Asdx@34vr")
    webButton.click(commonLocators['submit button'])
    }
    else if(role=="Doctor") {
    actions.visit("/");
    webButton.click(commonLocators['login button'])
    webTextBox.typeText(commonLocators['email/Number'], "PFCNIUHO@gmail.com")
    webTextBox.typeText(commonLocators['password'], "123@Ab1")
    webButton.click(commonLocators['submit button'])
    }
})
When('user clicks on the {string} field', (element) => {
    webXpath.clickByXpath("visibleText",element)
})