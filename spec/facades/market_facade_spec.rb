require 'rails_helper'

describe MarketFacade do
  context 'markets', :vcr do
    it 'list the markets' do
      markets = MarketFacade.new.markets
      expect(markets.first.name).to eq("14&U Farmers' Market")
    end
  end

  context 'market', :vcr do
    it 'shows market info' do
      market = MarketFacade.new.market(331074)

      expect(market.name).to eq("Yancey County Farmers' Market")
    end
  end

  context 'market vendors', :vcr do
    it 'shows vendors listed under market' do
      vendors = MarketFacade.new.market_vendors(331074)

      expect(vendors.count).to eq(13)
      expect(vendors.first.contact_name).to eq('Arthur Lubowitz IV')
    end
  end
end
