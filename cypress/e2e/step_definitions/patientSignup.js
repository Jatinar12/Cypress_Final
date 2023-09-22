import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import WebButton from "../../helpers/webButton";
import WebSelectBox from "../../helpers/webSelectBox"
import commonLocators from "../../pages/commonLocators.json"

When('user selects checkbox with value {string} Type', (elementIdentifier) => {
    const webButton = new WebButton();
    webButton.click(commonLocators[elementIdentifier])
})

When('user selects {string} in the {string} select field', (text,elementIdentifier) => {
    const webSelectBox = new WebSelectBox();
    webSelectBox.selectDropDownUsingText(commonLocators[elementIdentifier], text)
})
