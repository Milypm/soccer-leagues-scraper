require_relative '../lib/webscraper'

describe Scraping do
  let(:url) { 'https://www.espn.com/soccer/table/_/league/eng.1' }
  let(:new_scraping) { Scraping.new(url) }
  let(:all_teams) { Hash.new { |k, v| k[v] = [] } }
  describe '#initialize' do
    it 'take the value of url as a string' do
      new_scraping
      expect(new_scraping.url.instance_of?(String)).to be_truthy
    end
  end
  describe '#match_url' do
    it 'return true if the size of hash is equal to 5' do
      new_scraping
      new_scraping.match_url
      all_teams.size == 5
      expect(new_scraping.match_url).to be_truthy
    end
  end
end
