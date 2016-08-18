class Game

  attr_accessor :deck, :trash

  def start_game(user)
    create_human_player(user.name)
    create_cpu_player
    initialize_game_assets
    draw_initial_cards(@player1)
    draw_initial_cards(@player2)
    game_round
  end

  def create_human_player(name)
    @player1 = Human.new(name: name)
    @player1.game = self
  end

  def create_cpu_player
    @player2 = CPU.new
    @player2.game = self
  end

  def initialize_game_assets
    initialize_deck(size: 40)
    initialize_trash
  end

  def initialize_deck(size:)
    @deck = Deck.new(initial_size: size)
  end

  def initialize_trash
    @trash = Trash.new
  end

  def draw_initial_cards(player)
    player.hand.initial_draw(@deck)
  end

  def game_round
    make_move(@player1, @player2)

    if @player2.health <= 0
      puts "#{@player1.name} wins!"
      exit
    end

    draw_card_phase(@player1)


    make_move(@player2, @player1)

    if @player1.health <= 0
      puts "#{@player2.name} wins!"
      exit
    end

    draw_card_phase(@player2)

    binding.pry
    game_round
    #cleanup
    #game_round
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
    #cleanup
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
