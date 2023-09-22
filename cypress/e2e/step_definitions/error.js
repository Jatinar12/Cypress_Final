import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import commonLocators from "../../pages/commonLocators.json"
import credentails from "../../fixtures/example.json"
import GenericActions from "../../utilities/genericActions";
import WebButton from "../../helpers/webButton";
import WebTextBox from "../../helpers/webTextBox";
import Decryption from "../../utilities/decryption";

Given('user logs in with {string} credentials', (role) => {
    const actions = new GenericActions();
    const webButton = new WebButton();
    const webTextBox = new WebTextBox();
    const decryption =  new Decryption();

    const decoded_string = decryption.getDecodedString(`${role}_EMAIL`);
    const decoded_email = decryption.getDecodedString(`${role}_PASSWORD`);
    actions.visit("/");
    webButton.click(commonLocators['login button'])
    webTextBox.typeText(commonLocators[`${role}_EMAIL`], decoded_string)
    webTextBox.typeText(commonLocators[`${role}_PASSWORD`], decoded_email)
    webButton.click(commonLocators['submit button'])
})
