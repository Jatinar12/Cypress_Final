Feature: Change password

    @CHPA001 @MYD-197 @Regression @Sanity @Patient @ChangePassword
    Scenario Outline: Checking the functionality of change password page with satisfied rules
        Given user logs in with "<Role>" credentials
        And user clicks on the "Account Settings" field
        And user clicks on the "<Page Type>" field
        When user enters value "<current password>" in the "current password" input field
        And user enters value "<New Password>" in the "new password" input field
        And user enters value "<Confirm Password>" in the "confirmed password" input field
        And user clicks on the "submit"
        Then user can view "<Message>"
        Examples:
            | Role    | Page Type       | current password | New Password | Confirm Password | Message                       |
            | Patient | Change Password | Asdx@34v         | Asdx@34vr    | Asdx@34vr        | Password changes successfully |


    @CHPA002 @MYD-197 @Regression @Patient @ChangePassword
    Scenario Outline: Checking the functionality of change password page with unsatisfied rules
        Given user logs in with "<Role>" credentials
        And user clicks on the "Account Settings" field
        And user clicks on the "<Page Type>" field
        And user enters value "<Current Password>" in the "current password" input field
        And user enters value "<New Password>" in the "new password" input field
        And user enters value "<Confirm Password>" in the "confirmed password" input field
        Then user can view "<Error Message>"
        Examples:
            | Role    | Page Type       | Current Password | New Password | Confirm Password | Error Message                  |
            | Patient | Change Password | Aaravsh#123      | Alp@1        | Alp@1            | At least six characters        |
            | Patient | Change Password | Aaravsh#123      | Alpha123     | Alpha123         | At least one special character |
            | Patient | Change Password | Aaravsh#123      | ALPHA@12     | ALPHA@12         | A lowercase letter             |
            | Patient | Change Password | Aaravsh#123      | alpha@123    | alpha@123        | An uppercase letter            |
            | Patient | Change Password | Aaravsh#123      | Alpha@12     | Aarav@123        | An uppercase letter            |
            | Patient | Change Password | Aaravsh#123      | Alpha@#$     | Aarav@#$         | At least one number            |


@CHPA003 @MYD-197 @Regression @Patient @ChangePassword
Scenario Outline: Checking the functionality of change password page with invalid data
    Given user logs in with "<Role>" credentials
    And user clicks on the "Account Settings" field
    And user clicks on the "<Page Type>" field
    And user enters value "<Current Password>" in the "current password" input field
    And user enters value "<New Password>" in the "new password" input field
    And user enters value "<Confirm Password>" in the "confirmed password" input field
    And user clicks on the "submit"
    Then user can view "<Error Message>"
    Examples:
        | Role    | Page Type       | Current Password | New Password | Confirm Password | Error Message             |
        | Patient | Change Password | aaravsh#123      | Aarav@123    | Aarav@123        | Failed to change password |

