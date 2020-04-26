class TopOpenWorldGames::Scraper
  
  def self.scrape_games
    doc = Nokogiri::HTML(open("https://glitchwave.com/charts/top/game/1800-20199999/g:open-world/"))
    
    games = doc.css("div.chart_card")

    games.each do |g|
      name = g.css("div.chart_title a.game").text
      rating = g.css("div.chart_card_score").text
      TopOpenWorldGames::Game.new(name, rating)
    end
  end
end