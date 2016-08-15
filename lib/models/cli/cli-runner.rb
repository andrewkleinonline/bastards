class CLIRunner

  def start_game
    greet #runs code to greet user
  end

  def greet
    puts "Welcome to Bastards! What is your name?"
    username = get_user_input #get user's name
    #add code to associate player
  end

  def get_user_input
    gets.strip
  end

end
