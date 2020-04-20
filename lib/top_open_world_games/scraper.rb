class TopOpenWorldGames::Scraper
  def self.scrape_games
    doc = Nokogiri::HTML(open("https://glitchwave.com/charts/top/game/1800-20199999/g:open-world/"))
    binding.pry
  end
end