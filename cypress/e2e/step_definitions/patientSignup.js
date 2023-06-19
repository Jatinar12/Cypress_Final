import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import WebButton from "../../helpers/webButton";
import WebSelectBox from "../../helpers/webSelectBox";
import commonLocators from "../../pages/commonLocators.json"

const webButton = new WebButton();
const webSelectBox = new WebSelectBox();


When('user selects checkbox with value {string} Type', (element) => {
    webButton.click(commonLocators[element])
})

When('user selects {string} in the {string} select field', (text,element) => {
    (commonLocators[element], text)
})
