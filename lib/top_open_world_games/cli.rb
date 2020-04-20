class TopOpenWorldGames::CLI
  def call
    puts ""
    puts "Welcome! Here are Glitchwave's top 5 open world video games of all time!"
    puts ""
    get_games
    list_games
    user_game_selection
  end
  
  def get_games
    @games = TopOpenWorldGames::Game.all
  end
  
  def list_games
    puts "Select a game (1-5) to see more information!"
    @games.each.with_index(1) do |game, index|
      puts "#{index}. #{game.name}"
    end
  end
  
  def user_game_selection
    selected_game = gets.strip.to_i
    if valid_input(selected_game, @games)
      display_info(selected_game)
    end
  end
  
  def valid_input(input, array)
    input.to_i <= array.length && input.to_i > 0
  end
  
  def display_info(selected_game)
    game = @games[selected_game - 1]
    puts "Here is more information about #{game.name}"
  end
end





