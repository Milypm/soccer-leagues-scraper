require_relative '../lib/webscraper'

describe Scraping do
  let(:url) { 'https://www.espn.com/soccer/table/_/league/eng.1' }
  let(:option) { 'p' }
  let(:new_scraping) { Scraping.new(url, option) }
  let(:all_teams) { Hash.new { |k, v| k[v] = [] } }
  let(:arr) { %w[Chelsea ManU Liverpool Arsenal ManCity] }
  describe '#initialize' do
    it 'take the value of url as a string' do
      new_scraping
      expect(new_scraping.url.instance_of?(String)).to be_truthy
    end
    it 'take the value of url as a string' do
      new_scraping
      expect(new_scraping.url.instance_of?(Numeric)).to be_falsy
    end
  end
  describe '#match_url' do
    it 'return true if url value is an instance of Hash' do
      new_scraping
      new_scraping.match_url
      expect(all_teams.instance_of?(Hash)).to be_truthy
    end
    it 'return true if Hash size equals 5' do
      new_scraping
      new_scraping.match_url
      5.times do
        i = 0
        all_teams[i] << arr[i]
        i + 1
      end
      all_teams.size
      expect(new_scraping.match_url).to eql(5)
    end
  end
  describe '#print_league' do
    it 'return true if all_teams is an instance of String' do
      new_scraping
      new_scraping.match_url
      5.times do
        i = 0
        all_teams[i] << arr[i]
        i + 1
      end
      expect(new_scraping.print_league.instance_of?(Array)).to be_falsy
    end
  end
end
