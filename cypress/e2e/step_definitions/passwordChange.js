import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import WebXpath from "../../helpers/webXpath";
import commomLocators from "../../pages/commonLocators.json"

const webXpath = new WebXpath();

Then('user can view {string}', (text) => {
    webXpath.shouldContainTextByXpath(text)
})
