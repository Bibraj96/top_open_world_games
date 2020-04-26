class TopOpenWorldGames::Game
  attr_accessor :name, :rating, :num_ratings, :release_year
  @@all = []
  
  def initialize(name, rating, num_ratings, release_year)
    @name = name
    @rating = rating
    @num_ratings = num_ratings
    @release_year = release_year
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