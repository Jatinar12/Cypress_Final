Feature: Slot Availability

  @SALV001 @MYD-115 @Regression @Sanity @NotAutomated @Doctor @Slot
  Scenario Outline: Slot Availability - Checking the functionality of create a slot
    Given user logs in with "<Role>" credentials
    When user clicks on the "dashboard"
    # And user clicks on the "<date field>"
    # And user clicks on the start time button
    # And user clicks on the "<Hours field>"
    # And user clicks on the "<Minutes field>"
    # And user clicks on the "<Appointment size field>"
    # And user clicks on the "create a slot button"
    # Then user can view <Message>

    Examples: 
      | Role   | Date     | Hours            | Minutes        | Appointment Size  | Message                        | Page type  | 
      | Doctor | Today    | Current Hour + 1 | Current Minute |                 5 | Time slot - Slot Size - Booked | /  |
      # | doctor | Tomorrow | Current Hour     | Current Minute |                 2 | Time slot - Slot Size - Booked | Dashboard  | 
      # | doctor | Today+4  | Current Hour     | Current Minute |                 3 | Time slot - Slot Size - Booked | Dashboard  | 
      # | doctor | Today+10 | Current Hour     | Current Minute |                 4 | Time slot - Slot Size - Booked | Dashboard  | 

#   @SLAV002 @MYD-115 @Regression @NotAutomated @Patient @Slot
#   Scenario Outline: Slot Availability - Patient check the availability of doctor for current day
#     Given user logs in with <Role> credentials
#     And user navigates to <Page Type>
#     And user can view <Doctor Card>
#     And user checks the <Time Slot> field
#     And user can view <Availability of Doctor Slot>

#     Examples: 
#       | Role    | Time slot    | Availability of Doctor Slot | Doctor Card       | Page Type |
#       | patient | Current Time | Today                       | Dr. Poonam Sharma | Homepage  |

#   @SLAV003 @MYD-115 @Regression @NotAutomated @Patient @Slot
#   Scenario Outline: Slot Availability - Patient check the availability of doctor for current day with multiple timings
#     Given user logs in with <Role> credentials
#     And user navigates to <Page Type>
#     And user can view <Doctor Card>
#     And user checks the multiple <Time Slot> field
#     And user can view <Availability of Doctor Slot>

#     Examples: 
#       | Role    | Time slot                            | Availability of Doctor Slot | Doctor Card     | Page Type |
#       | patient | Current Time, Current Time + 2 hours | Today                       | Dr. Doyle Borer | Homepage  |

#   @SLAV004 @MYD-115 @Regression @NotAutomated @Patient @Slot
#   Scenario Outline: Slot Availability - Patient check the availability of doctor for current day but all slots are booked
#     Given user logs in with <Role> credentials
#     And user navigates to <Page Type>
#     And user can view <Doctor Card>
#     And user checks the <Time Slot> field
#     And user checks no slot is available
#     And user can view <Availability of Doctor Slot>

#     Examples: 
#       | Role    | Time slot    | Availability of Doctor Slot    | Doctor Card    | Page Type |
#       | patient | Current Time | Tomorrow, Today + 3, Today + 9 | Dr. mytestdata | Homepage  |

#   @SLAV005 @MYD-115 @Regression @NotAutomated @Patient @Slot
#   Scenario Outline: Slot Availability - Patient check the availability of doctor for current day but time has passed
#     Given user logs in with <Role> credentials
#     And user navigates to <Page Type>
#     And user can view <Doctor Card>
#     And user tries to check time after <Current Time> of doctor slot time
#     And user can view <Availability of Doctor Slot>

#     Examples: 
#       | Role    | Time slot      | Availability of Doctor Slot | Doctor Card           | Page Type |
#       | patient | 5:00 - 5:30 pm | Tomorrow                    | Dr. Braxton Considine | Homepage  |

#   @SLAV006 @MYD-115 @Regression @NotAutomated @Patient @Slot
#   Scenario Outline: Slot Availability - Patient check the doctor availability for next week or more days
#     Given user logs in with <Role> credentials
#     And user navigates to <Page Type>
#     And user can view <Doctor Card>
#     And the doctor is available on <Date> 
#     And user checks slots are available
#     And user can view <Availability of Doctor Slot>

#     Examples: 
#       | Role    | Date    | Availability of Doctor Slot | Doctor Card         | Page Type |
#       | patient | Today+9 | After 10 Days               | Dr. Monserrate Kihn | Homepage  |