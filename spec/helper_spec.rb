require_relative '../lib/helper_methods'
require_relative '../lib/string_modules'
require_relative '../lib/webscraper'

describe '#display_options' do
  let(:res1) { StringModule::OPTIONS }
  let(:res2) { "TOP 5 TEAMS 2020-21: Premier League, Serie A, Bundesliga\n\n".green.bold }
  it 'verify if the variable has the right value' do
    expect(display_options).to eql(res1)
  end
  it 'verify if the variable has the right value' do
    expect(display_options).not_to eql(res2)
  end
end
describe '#valid_opt' do
  let(:choice1) { 'a' }
  let(:choice2) { 1 }
  it 'return true if input is valid' do
    expect(valid_opt?(choice1)).to be_truthy
  end
  it 'return false if input is not valid' do
    expect(valid_opt?(choice2)).to be_falsy
  end
end
describe '#match_scrape' do
  let(:ger) { 'https://www.espn.com/soccer/table/_/league/ger.1' }
  let(:option) { 'b' }
  let(:scrape) { Scraping.new(ger, option) }
  let(:res) { { 'title' => title, 'result' => result, 'url' => "URL: #{@url}" } }
  it 'return true if return value is an instance of Hash' do
    scrape
    scrape.match_url
    scrape.print_league
    expect(match_scrape(option).instance_of?(Hash)).to be_truthy
  end
  it 'return true if the size of the return value is correct' do
    scrape
    scrape.match_url
    scrape.print_league
    expect(match_scrape(option).size == 3).to be_truthy
  end
  it 'return false if the size of the return value is not correct' do
    scrape
    scrape.match_url
    scrape.print_league
    expect(match_scrape(option).size == 4).to be_falsy
  end
end
