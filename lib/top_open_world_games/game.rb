class TopOpenWorldGames::Game
  attr_accessor :name, :rating
  @@all = []
  
  def initialize(name, rating)
    @name = name
    @rating = rating
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