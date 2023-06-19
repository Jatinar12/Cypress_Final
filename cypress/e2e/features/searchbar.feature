Feature: Search Bar

    # # @SEBA001 @Regression @MYD-40 @NotAutomated @Patient @Search
    # Scenario Outline: Search Bar - Check for the search functionality for doctors
    #     Given user navigates to the "<Page Type>" page
    #     When user enters value "<Data>" in the "search" input field
    #     And user clicks on the "search icon button" 
    #     Then the corresponding page appears with the expected elements: "<Item>"
    #     Examples:
    #         | Page Type | Data    | Item                                     |
    #         | Homepage  | Rishika | Dr. Rishika                              |
    #         | Homepage  | Ra      | Dr. Laurianne Grady,Dr. Nikolas Franecki |

    # @SEBA002 @Regression @MYD-40 @NotAutomated @Patient @Specialities @Search
    # Scenario Outline: Search Bar - Check for the search functionality for specialities
    #     Given user navigates to the "<Page Type>" page
    #     When user clicks on the "specialities field button"
    #     And user enters value "<value>" in the "specialities field" input field
    #     And user clicks on the "search icon button"
    #     And user clicks on the "specialities card"
    #     Then the corresponding page appears with the expected elements: "<Item>"
    #     Examples:
    #         | Page Type | value  | Item                                               |
    #         | Homepage  | Dental | Dr. Iva Jerde,Dr. Yasmine Cartwright,Dr. Jo Schumm |

    # # @SEBA003 @Regression @Sanity @MYD-40 @NotAutomated @Patient @Specialities @Search
    # Scenario Outline: Search Bar - Check for the search functionality for doctors and specialities
    #     Given user navigates to the "<Page Type>" page
    #     When user enters value "<value>" in the "specialization" input field
    #     And user enters value "<Data>" in the "search" input field
    #     And user clicks on the "icon button"
    #     Then the corresponding page appears with the expected elements: "<Item>"

    #     Examples:
    #         | Page Type | value       | Data     | Item                |
    #         | Homepage  | Dental      | Antone   | Dr. Antone Mertz    |
    #         | Homepage  | Diabetology | Braxton | Dr. Braxton Considine |

    # #@SEBA004 @Regression @MYD-40 @NotAutomated @Patient @Search
    # Scenario Outline: Search Bar - Check for the search functionality with invalid doctor name
    #     Given user navigates to the "<Page Type>" page
    #     When user enters value "<Data>" in the "search" input field
    #     And user clicks on the "icon button"
    #     Then the corresponding page appears with the expected elements: "<message>"

    #     Examples:
    #         | Page Type | Data      | message                           |
    #         | Homepage  | Rish123@# | No results found for  'Rish123@#' |

    # # @SEBA005 @Regression @MYD-40 @NotAutomated @Patient @Specialities @Search
    # Scenario Outline: Search Bar - Check for the search functionality with invalid specialities
    #     Given user navigates to the "<Page Type>" page
    #     When user enters value "<value>" in the "specialization" input field
    #     Then user can view message "No options"

    #     Examples:
    #         | Page Type | value    |
    #         | Homepage  | 1245@#$% |
