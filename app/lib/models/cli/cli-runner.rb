class CLIRunner

  def start_game
    greet #runs code to greet user
  end

  def greet
    puts "Welcome to Bastards! What is your name?"
    user_input = get_user_input #get user's name
    @player1 = Human.new(name: user_input) #add code to associate player
    binding.pry
  end

  def get_user_input
    gets.strip
  end

end
