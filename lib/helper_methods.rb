def display_options
  res = ''
  res << "TOP 5 TEAMS 2020-21: Premier League, Serie A, Bundesliga\n\n".green.bold
  res << "p for English Premier League\n
a for Italian Serie A\n
b for German Bundesliga\n
m for Menu\n
e to Exit\n\n"
res
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
