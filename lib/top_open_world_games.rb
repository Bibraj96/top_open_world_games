require_relative "./top_open_world_games/version"
require_relative "./top_open_world_games/cli"
require_relative "./top_open_world_games/game"
require_relative "./top_open_world_games/scraper"

require 'pry'
require 'nokogiri'
require 'open-uri'

module TopOpenWorldGames
  class Error < StandardError; end
  # Your code goes here...
end
