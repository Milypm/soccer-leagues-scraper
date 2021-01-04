require_relative './string_modules'

def display_options
  StringModule::OPTIONS
end

def valid_opt?(choice)
  return true if %w[p a b e m].include?(choice)

  false
end

def match_scrape(option)
  eng = 'https://www.espn.com/soccer/table/_/league/eng.1'
  ita = 'https://www.espn.com/soccer/table/_/league/ita.1'
  ger = 'https://www.espn.com/soccer/table/_/league/ger.1'
  new_scraping = Scraping.new(eng, option) if option == 'p'
  new_scraping = Scraping.new(ita, option) if option == 'a'
  new_scraping = Scraping.new(ger, option) if option == 'b'
  new_scraping.match_url
  new_scraping.print_league
end
