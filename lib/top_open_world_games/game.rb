class TopOpenWorldGames::Game
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    if @@all.empty?
      TopOpenWorldGames::Scraper.scrape_games
    end
    @@all
  end
  
  def save
    @@all << self
  end
end