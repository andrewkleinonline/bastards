#require 'pry'

class CLIRunner

  attr_accessor :game

  def start_intro
    greet #runs code to greet and create user
    ask_for_start
  end

  def greet
    puts "Welcome to Bastards!\nWhat is your name?"
    #binding.pry
    user_input = Info.get_user_input #get user's name
    @player = Human.new(name: user_input) #create human player object
    puts "Hello, #{@player.name}"
  end

  # def get_user_input
  #   puts "\nType now:"
  #   user_input = gets.strip
  #   puts ""
  #   user_input
  # end

  def ask_for_start
    puts "Do you want to start the game? y/n"
    user_input = Info.get_user_input
    if user_input.downcase == "y"
      start_game
    elsif user_input.downcase == "n"
      puts "You said no :("
    else
      exit_app
    end
  end

  def exit_app
    puts "Goodbye :("
    exit
  end

  def start_game
    @game = Game.new
    @game.start_game(@player)
    #make game a global variable?
  end


end
