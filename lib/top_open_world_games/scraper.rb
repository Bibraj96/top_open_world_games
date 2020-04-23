class TopOpenWorldGames::Scraper
  
  def self.scrape_games
    doc = Nokogiri::HTML(open("https://glitchwave.com/charts/top/game/1800-20199999/g:open-world/"))
    
    games = doc.css("div.chart_title a.game")

    games.each do |g|
      name = g.text
      TopOpenWorldGames::Game.new(name)
    end
  end
  
end