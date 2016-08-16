class Game

  attr_accessor :deck

  def start_game(player)
    @player1 = player
    create_cpu_player
    populate_deck
    initialize_trash
    draw_initial_cards(@player1)
    draw_initial_cards(@player2)
    game_round
  end

  def create_cpu_player
    @player2 = CPU.new
  end

  def populate_deck
    @deck = Deck.new(initial_size: 40)
  end

  def initialize_trash
    @trash = Trash.new
  end

  def draw_initial_cards(player)
    player.hand.initial_draw(@deck)
  end

  def game_round
    #binding.pry
    make_move(@player1, @player2)
    draw_card_phase(@player1)
    if @player2.health <= 0
      puts "#{@player1.name} wins!"
      exit
    end

    make_move(@player2, @player1)
    draw_card_phase(@player2)
    if @player1.health <= 0
      puts "#{@player2.name} wins!"
      exit
    end

    game_round
  end

  def make_move(player, opponent)
    if player.is_human #only want to puts to CL if human
      Info.display_healths(player, opponent)
      Info.display_hand(player)
      card_choice_index = Info.get_user_input.to_i - 1
    else #player is cpu
      card_choice_index = rand(player.hand.size)
      #CPU plays a card randomly
    end

    selected_card = player.cards[card_choice_index]

    puts "#{player.name} played #{selected_card.name}"
    sleep(1)

    selected_card.play(@trash)
    attack_player(selected_card.power, player, opponent) if selected_card.power > 0
    player.cards.delete_at(card_choice_index)
  end

  def attack_player(power, attacker, target)
    damage_player(power, target)
    Info.display_damage(power, attacker, target)
  end

  def damage_player(power, target)
    target.health -= power
  end

  def draw_card_phase(player)
    player.draw_card(@deck)
    Info.display_drawn_card(player) if player.is_human
  end

  def cleanup
    puts "reached cleanup"
    binding.pry
  end


end
