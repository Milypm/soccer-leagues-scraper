require 'nokogiri'
require 'open-uri'
require 'colorize'

# Fetch and parse HTML document
class Scraping
  attr_reader :url

  def initialize(in_url)
    @url = in_url
    @doc = Nokogiri::HTML(URI.open(@url))
  end

  def print_league
    @all_teams.each { |k, v| puts "#{k}. #{v[0]}....Total Points: #{v[1]}" }
    puts "URL: #{@url}"
  end

  def match_url
    @all_teams = Hash.new { |k, v| k[v] = [] }
    get_title = 0
    get_points = 7
    5.times do
      @all_teams[(get_title + 1)] << @doc.css('abbr')[get_title]['title']
      @all_teams[(get_title + 1)] << @doc.css('.stat-cell')[get_points].text
      get_title += 1
      get_points += 8
    end
  end
end
