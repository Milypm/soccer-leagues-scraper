require_relative '../lib/webscraper'

describe Scraping do
  let(:new_scraping) { Scraping.new('https://www.espn.com/soccer/table/_/league/eng.1') }
  describe '#match_url' do
    it 'return the number ' do
      expect(new_scraping.match_url.size).to eql(8)
    end
  end

  describe '#print_league' do
    it '' do
      expect(new_scraping.print_league).to be_truthy
    end
  end
end