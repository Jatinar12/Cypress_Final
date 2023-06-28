Feature: Dashboard

  #   @DA001 @Regression @NotAutomated @Dashboard @Patient @MYD-76
  #   Scenario Outline: Checking the visibility of UI element
  #     Given user navigates to the "<Page type>" page
  #     And the corresponding page appears with the expected elements: "<Item>"

  #     Examples:
  #       | Page type | Item                          |
  #       | Homepage  | 20+ Specialities,220+ Doctors |

  #   @DA002 @Regression @Sanity @NotAutomated @Dashboard @SpecialitiesCard @Patient @MYD-76
  #   Scenario Outline: Check the functionality of Specialities Card
  #     Given user navigates to the "<Page type>" page
  #     When user clicks on the "<Speciality Card>"
  #     Then the corresponding page appears with the expected elements: "<Item>"
      
  #     Examples:
  #       | Page type | Speciality Card | Item                           |
  #       | Homepage  | speciality card | Dr. Layne Ryan,Dr. Jevon Upton |


  # @DA003 @Regression @NotAutomated @Dashboard @SpecialitiesCard @Patient @MYD-76
  # Scenario Outline: Check the functionality of View all specialities link
  #   Given user navigates to the "<Page type>" page
  #   When user clicks on the "view all specialities link"
  #   Then the corresponding page appears with the expected elements: "<Item>"

  #   Examples:
  #     | Page type | Item                             |
  #     | Homepage  | Cosmetology,Anethesiology,Dental |

  # @DA004 @Regression @Sanity @NotAutomated @Dashboard @DoctorCard @Patient @MYD-76
  # Scenario Outline: Check the functionality of Doctor card
  #   Given user navigates to the "<Page type>" page
  #   When user clicks on the "<Doctor Card>"
  #   Then the corresponding page appears with the expected elements: "<Item>"

  # Examples:
  #   | Page type | Doctor Card       | Item                        |
  #   | Homepage  | first doctor card | Consultation Fee: Rs. 3022  |

  @DA005 @Regression @NotAutomated @Dashboard @Pagination @Patient @MYD-31
  Scenario Outline: Check the functionality of pagination on Doctor cards by clicking on number
    Given user navigates to the "<Page Type>" page
    And user can view list of "doctor cards"
    And User is on "<Number>" page of "dash board"
    When user clicks on "<Button>" page of "dash board"
    Then User is on "<Value>" page of "dash board"

    Examples:
      | Page Type | Number | Button | Value | text |
      | Homepage  | 3      | 2      | 2     | 3    |
