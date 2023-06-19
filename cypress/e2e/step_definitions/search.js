import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import commonLocators from "../../pages/commonLocators.json"
import WebTextBox from "../../helpers/webTextBox";
import WebSelectBox from "../../helpers/webSelectBox";
import WebXpath from "../../helpers/webXpath";
import WebElement from "../../helpers/webElement";
import WebButton from "../../helpers/webButton";

const webTextBox = new WebTextBox();
const webElement = new WebElement();
const webButton = new WebButton();
const webSelectBox = new WebSelectBox();
const webXpath = new WebXpath();

Given('{string} keyword is {string}', (element,text) => {
    webTextBox.typeText(commonLocators[element], text)
})

Given('{string} is {string}', (element,text) => {
    if(text="Cardiac Surgery"){
    webTextBox.typeText(commonLocators[element], text)
    webTextBox.typeText(commonLocators[element], '{downarrow}')
    webTextBox.typeText(commonLocators[element], '{enter}')
    }
    else(element=="search logo")
        webButton.click(commonLocators[element])
    

})

Given('{string} is clicked', (element) => {
    webButton.click(commonLocators[element])
})

