Feature: Search page result functionality

    # https://team-1628225445927.atlassian.net/browse/MYD-156
    # @MYD-156
    # @Regression

    Scenario Outline: check for the search result page using search keyword  or specialization
        Given user navigates to the "<Page Type>" page
        And "search" keyword is "<keyword>"
        And "specialization" is "<special>"
        And "search logo" is clicked
        # And current page is "<page>"
        # And per page is "<count>"
        # When search page  is loaded
        # Then Result contain search keyword "<keyword>"
        # And Doctor for specialization "<special>" are displayed

        Examples:
            | Page Type | keyword | special         | page | count |
            | Homepage  | Layne   | Cardiac Surgery | 1    | 5     |

# #https://team-1628225445927.atlassian.net/browse/MYD-156
# @MYD-156

# Scenario: check for the search result page using search keyword
#     Given search keyword is <keyword>
#     And current page is <page>
#     And per page is <count>
#     When search page  is loaded
#     Then Result contain doctor for search keyword <keyword> are displayed

# Example:
#         | keyword | page | count |
#         | Anjali  | 1    | 5     |

# #https://team-1628225445927.atlassian.net/browse/MYD-156
# @MYD-156

# Scenario: check for the search result page using specialization
#     Given specialization is <special>
#     And current page is <page>
#     And per page is <count>
#     When search page  is loaded
#     Then Result contain doctor for specialization <special> are displayed

# Example:
#         | special | page | count |
#         | dentist | 1    | 5     |

# #https://team-1628225445927.atlassian.net/browse/MYD-156
# @MYD-156

# Scenario: Patient check for the pagination in Search result page on first page
#     Given search keyword is <keyword>
#     And patient is on page no. 1
#     And search page is loaded
#     And previous button is disabled
#     And next button is enabled
#     When patient clicks on next button
#     Then patient navigate to page no. 2
#     And previous button is enabled

# Example:
#         | keyword |
#         | Singh   |

# #https://team-1628225445927.atlassian.net/browse/MYD-156
# @MYD-156

# Scenario: Patient check for the pagination in Search result page on last page
#     Given search keyword is <keyword>
#     And patient is on page no. 1
#     And search page is loaded
#     And previous button is enabled
#     And next button is disabled
#     When patient clicks on previous button
#     Then patient navigates to previous page
#     And next button is enabled

# Example:
#         | keyword |
#         | Singh   |

# #https://team-1628225445927.atlassian.net/browse/MYD-156
# @MYD-156

# Scenario: Patient check for the pagination in Search result page on other page
#     Given search keyword is <keyword>
#     And patient is on page no.<page>
#     And search page is loaded
#     And next and previous button is enabled
#     When patient clicks on <button> button
#     Then patient is navigate to page number <value>

#     Examples:
#         | keyword | page | button | value |
#         | Singh   | 1    | 2      | 2     |
#         | Singh   | 3    | 2      | 2     |
#         | Singh   | 5    | 3      | 3     |

# #https://team-1628225445927.atlassian.net/browse/MYD-156
# @MYD-156

# Scenario: check for the search result page using unexpected string in search keyword or specialization
#     Given search keyword is <keyword>
#     And specialization is <special>
#     When search page is loaded
#     Then Result contain error message <message>

# Example:
#         | keyword | special | message         |
#         | @@@!@   | 78dbxbd | No result found |
#         | @@@!@   |         | No result found |
#         |         | @@@!@   | No result found |

# #https://team-1628225445927.atlassian.net/browse/MYD-156
# @MYD-156

# Scenario: check for the search result page using no input given
#     Given search keyword is <keyword>
#     And specialization is <special>
#     When search page is loaded
#     Then result page is move to dashboard page
# Example:
#         | keyword | special |
#         |         |         |