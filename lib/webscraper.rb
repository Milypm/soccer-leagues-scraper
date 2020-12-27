require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
class Scraping
  attr_reader :option
  # attr_accessor :league, :position, :team, :points

  def initialize(option)
    @option = option
  end

  def check_url(option)
    if @option == 'p'
      url_league = 'https://www.espn.com/soccer/table/_/league/eng.1'
    elsif @option == 'a'
      url_league = 'https://www.espn.com/soccer/table/_/league/ita.1'
    elsif @option == 'b'
      url_league = 'https://www.espn.com/soccer/table/_/league/ger.1'
    end
    url_league
  end

  def match_url(url_league)
    @doc = Nokogiri::HTML(URI.open(@url_league))
    @league = @doc.html('.Table_Title')
    @position = @doc.html('.team_position')
    @span = @doc.at('abbr').first
    @team = span.attr('title')
    @points = @doc.html('stat-cell')
  end

  def display_league(league, position, team, points)
    total_list = 5
    i = 1
    puts "#{league}"
    while i <= TOTAL_LIST
      puts "#{position}. #{team} Points: #{points}"
    end
  end
end
