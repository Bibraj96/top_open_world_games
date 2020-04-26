class TopOpenWorldGames::CLI
  def call
    puts "\nWelcome! Here are Glitchwave's top 40 open world video games of all time!\n"
    @input = ""
    until @input == "exit"
      get_games
      list_games
      user_game_selection
      continue
    end
    goodbye
  end
  
  def get_games
    @games = TopOpenWorldGames::Game.all
  end
  
  def list_games
    puts "\nSelect a game (1-40) to see its rating and release year!\n"
    puts "***************************************"
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
    puts "***************************************"
    puts "#{game.name} was released in #{game.release_year}."
    puts "Out of #{game.num_ratings} total ratings, it received a #{game.rating}/5!"
  end
  
  def continue
    puts "***************************************"
    puts "To choose another game, type any key."
    puts "To exit, type 'exit'"
    @input = gets.strip
  end 
  
  def goodbye
    puts "Have fun exploring your open world game!"
  end
end





