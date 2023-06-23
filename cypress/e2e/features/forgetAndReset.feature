Feature: Forgot Reset Password

        # @FOREPA001 @MYD-319 @Regression @NotAutomated @Sanity @Password
        # Scenario Outline: Checking the functionality of forgot password link
        #         Given user navigates to the "<Page Type>" page
        #         When user clicks on the "Forgot Password?" field
        #         Then the corresponding page appears with the expected elements: "<Item>"
        #         Examples:
        #                 | Page Type | Item            |
        #                 | Login     | Forgot Password |

        # @FOREPA002 @MYD-319 @Regression @NotAutomated @Sanity @Password
        # Scenario Outline: Checking the functionality of reset link with valid email
        #         Given user navigates to the "<Page Type>" page
        #         When user enters value "<Email>" in the "provided email" input field
        #         And user clicks on the "send reset link button"
        #         # Then user can view "<Message>"
        #         Examples:
        #                 | Page Type       | Email                    | Message                                             |
        #                 | Forgot Password | sharmapoonam00@gmail.com | We have send reset link to sharmapoonam00@gmail.com |

        # @FOREPA003 @MYD-319 @Regression @NotAutomated @Password
        # Scenario Outline: Checking the functionality of reset link with invalid email
        #         Given user navigates to the "<Page Type>" page
        #         When user enters value "<Email>" in the "provided email" input field
        #         And user clicks on the "send reset link button"
        #         Then user can view "<Error Message>"
        #         Examples:
        #                 | Page Type       | Email             | Error Message                              |
        #                 | Forgot Password | sharm88@gmail.com | Unable to reset password. Please try again |

# @FOREPA004 @MYD-319 @Regression @NotAutomated @Sanity @Password
# Scenario Outline: Checking the functionality of reset password With satisfied rules
#         Given user navigates to <Page Type>
#         When user enters value <New Password> in the new password input field
#         And user enters value <Confirm Password> in the confirm password input field
#         And user clicks on the reset password button
#         Then user can view <Message>
#         Examples:
#                 | Page Type      | New Password | Confirm Password | Message                                   |
#                 | Reset Password | Aaravsh@1234 | Aaravsh@1234     | You can now Log in with your new password |

# @FOREPA005 @MYD-319 @Regression @NotAutomated @Password
# Scenario Outline: Checking the functionality of reset password with unsatisfied rules
#         Given user navigates to <Page Type>
#         When user enters value <New Password> in the new password input field
#         And user enters value <Confirm Password> in the confirm password input field
#         And user clicks on the reset password button
#         Then user can view <Error Message>
#         Examples:
#                 | Page Type      | New Password | Confirm Password | Error Message                                |
#                 | Reset Password | Alp@1        | Alp@1            | Password must contains six characters        |
#                 | Reset Password | Alpha123     | Alpha123         | Password must contains special characters    |
#                 | Reset Password | ALPHA@12     | ALPHA@12         | Password must contains lowercase letter      |
#                 | Reset Password | alpha@123    | alpha@123        | Password must contains uppercase letter      |
#                 | Reset Password | Alpha@#$     | Alpha@#$         | Password must contains atleast one number    |
#                 | Reset Password | Alpha@12     | Alpha@123        | New password and confirm password must match |
