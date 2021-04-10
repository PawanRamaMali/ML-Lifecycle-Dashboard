###################
# header.R
#
# Create the header for the ui.
###################
header <- dashboardHeader(
  title = span("ML Lifecycle Dashboard ", 
                style = "color: white; font-size: 15px")
 
  # Dropdown menu for messages
  # dropdownMenu(
  #   type = "messages",
  #   badgeStatus = "success",
  #   messageItem("Support Team",
  #               "This is the content of a message.",
  #               time = "5 mins"),
  #   messageItem("Support Team",
  #               "This is the content of another message.",
  #               time = "2 hours"),
  #   messageItem("New User",
  #               "Can I get some help?",
  #               time = "Today")
  # )
)
