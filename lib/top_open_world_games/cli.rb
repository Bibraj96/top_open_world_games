class TopOpenWorldGames::CLI
  def call
    puts "\nWelcome! Here are Glitchwave's top 40 open world video games of all time!\n".colorize(:green)
    @input = ""
    until @input == "exit"
      get_games
      list_games
      user_game_selection
      continue
    end
    done
  end
  
  def get_games
    @games = TopOpenWorldGames::Game.all
  end
  
  def list_games
    puts "Select a game (1-40) to see its rating and release year!\n".colorize(:green)
    puts "--------------------------------------------------------"
    @games.each.with_index(1) do |game, index|
      puts "#{index}. #{game.name}".colorize(:light_blue)
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
    puts "----------------------------------------------"
    puts "#{game.name} was released in #{game.release_year}.".colorize(:green)
    puts "Out of #{game.num_ratings} total ratings, it received a #{game.rating}/5!".colorize(:green)
  end
  
  def continue
    puts "----------------------------------------------"
    puts "To choose a game, type any key to display the top 40.".colorize(:light_blue)
    puts "To exit, type 'exit'".colorize(:red)
    @input = gets.strip
  end 
  
  def done
    puts "Have fun exploring your open world game!".colorize(:green)
  end
end

#Traceback (most recent call last):
#       12: from ./bin/top_open_world_games:5:in `<main>'
#        11: from /home/Bibraj96/Development/top_open_world_games/lib/top_open_world_games/cli.rb:6:in `call'
#        10: from /home/Bibraj96/Development/top_open_world_games/lib/top_open_world_games/cli.rb:15:in `get_games'
#        9: from /home/Bibraj96/Development/top_open_world_games/lib/top_open_world_games/game.rb:15:in `all'
#         8: from /home/Bibraj96/Development/top_open_world_games/lib/top_open_world_games/scraper.rb:4:in `scrape_games'
#         7: from /usr/local/rvm/rubies/ruby-2.6.1/lib/ruby/2.6.0/open-uri.rb:35:in `open'
#         6: from /usr/local/rvm/rubies/ruby-2.6.1/lib/ruby/2.6.0/open-uri.rb:736:in `open'
#         5: from /usr/local/rvm/rubies/ruby-2.6.1/lib/ruby/2.6.0/open-uri.rb:165:in `open_uri'
#         4: from /usr/local/rvm/rubies/ruby-2.6.1/lib/ruby/2.6.0/open-uri.rb:224:in `open_loop'
#         3: from /usr/local/rvm/rubies/ruby-2.6.1/lib/ruby/2.6.0/open-uri.rb:224:in `catch'
#         2: from /usr/local/rvm/rubies/ruby-2.6.1/lib/ruby/2.6.0/open-uri.rb:226:in `block in open_loop'
#         1: from /usr/local/rvm/rubies/ruby-2.6.1/lib/ruby/2.6.0/open-uri.rb:756:in `buffer_open'
#/usr/local/rvm/rubies/ruby-2.6.1/lib/ruby/2.6.0/open-uri.rb:378:in `open_http':503 Service Unavailable (OpenURI::HTTPError)





