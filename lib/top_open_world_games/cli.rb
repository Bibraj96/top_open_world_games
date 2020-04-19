class TopOpenWorldGames::CLI
  def call
    puts ""
    puts "Welcome! Here are Glitchwave's top 5 open world video games of all time!"
    puts ""
    get_games
    list_games
  end
  
  def get_games
    @games = ["LoZ BOTW", "Blood and Wine", "The Witcher 3", "Yakuza 0", "Fallout 2"]
  end
  
  def list_games
    puts "Select a game (1-5) to see more information!"
    @games.each.with_index(1) do |game, index|
      puts "#{index}. #{game}"
    end
  end
end