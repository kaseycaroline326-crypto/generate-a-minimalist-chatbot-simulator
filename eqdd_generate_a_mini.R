# eqdd_generate_a_mini.R

# Load necessary libraries
library(stringr)

# Define a simple chatbot simulator function
generate_a_mini <- function() {
  
  # Initialize conversation
  conversation <- c("Hello! I'm EQDD, a minimalist chatbot.")
  
  # Define chatbot responses
  responses <- list(
    "hi" = "Hey! How can I help you today?",
    "hello" = "Hi! What brings you here?",
    "help" = "I can assist you with simple conversations. What's on your mind?",
    "quit" = "Goodbye! It was nice chatting with you."
  )
  
  # Start conversation
  while(TRUE) {
    # Get user input
    user_input <- tolower(readline(prompt="You: "))
    
    # Check for quit command
    if(user_input == "quit") {
      conversation <- c(conversation, "You: quit", responses[["quit"]])
      break
    }
    
    # Check for matching response
    if(user_input %in% names(responses)) {
      conversation <- c(conversation, paste("You:", user_input), responses[[user_input]])
    } else {
      conversation <- c(conversation, paste("You:", user_input), "I didn't quite understand that. Try again!")
    }
    
    # Print conversation
    cat(paste(conversation, collapse = "\n"), "\n")
  }
  
}

# Run the chatbot simulator
generate_a_mini()