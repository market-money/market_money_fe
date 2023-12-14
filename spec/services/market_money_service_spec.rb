require 'rails_helper'

describe MarketMoneyService do
  describe '#markets', :vcr do
    it 'returns markets data' do  
      markets = MarketMoneyService.new.markets

      expect(markets).to be_a Hash
      expect(markets[:data]).to be_an Array
      expect(markets[:data].count).to eq(846)

      market_data = markets[:data].first

      expect(market_data).to have_key(:id)
      expect(market_data[:id]).to be_a(String)

      expect(market_data).to have_key(:type)
      expect(market_data[:type]).to be_a(String)

      expect(market_data).to have_key(:attributes)
      expect(market_data[:attributes]).to be_a Hash

      expect(market_data[:attributes]).to have_key(:name)
      expect(market_data[:attributes][:name]).to be_a String

      expect(market_data[:attributes]).to have_key(:street)
      expect(market_data[:attributes][:street]).to be_a String

      expect(market_data[:attributes]).to have_key(:city)
      expect(market_data[:attributes][:city]).to be_a String

      expect(market_data[:attributes]).to have_key(:county)
      expect(market_data[:attributes][:county]).to be_a String

      expect(market_data[:attributes]).to have_key(:state)
      expect(market_data[:attributes][:state]).to be_a String

      expect(market_data[:attributes]).to have_key(:zip)
      expect(market_data[:attributes][:zip]).to be_a String

      expect(market_data[:attributes]).to have_key(:lat)
      expect(market_data[:attributes][:lat]).to be_a String

      expect(market_data[:attributes]).to have_key(:lon)
      expect(market_data[:attributes][:lon]).to be_a String

      expect(market_data[:attributes]).to have_key(:vendor_count)
      expect(market_data[:attributes][:vendor_count]).to be_an Integer
    end

    it 'returned market data' do
      market = MarketMoneyService.new.market(322474)

      expect(market).to be_a Hash
      expect(market[:data]).to be_a Hash

      expect(market[:data]).to have_key(:id)
      expect(market[:data][:id]).to be_a String

      expect(market[:data]).to have_key(:type)
      expect(market[:data][:type]).to be_a String

      expect(market[:data]).to have_key(:attributes)
      expect(market[:data][:attributes]).to be_a Hash

      market_data = market[:data][:attributes]

      expect(market_data).to have_key(:name)
      expect(market_data[:name]).to be_a String

      expect(market_data).to have_key(:street)
      expect(market_data[:street]).to be_a String

      expect(market_data).to have_key(:city)
      expect(market_data[:city]).to be_a String

      expect(market_data).to have_key(:county)
      expect(market_data[:county]).to be_a String

      expect(market_data).to have_key(:state)
      expect(market_data[:state]).to be_a String

      expect(market_data).to have_key(:zip)
      expect(market_data[:zip]).to be_a String

      expect(market_data).to have_key(:lat)
      expect(market_data[:lat]).to be_a String

      expect(market_data).to have_key(:lon)
      expect(market_data[:lon]).to be_a String

      expect(market_data).to have_key(:vendor_count)
      expect(market_data[:vendor_count]).to be_an Integer
    end

    it 'returns vendors list for a market' do
      vendors = MarketMoneyService.new.vendors(322482)

      expect(vendors).to be_a Hash
      expect(vendors[:data]).to be_an Array
      expect(vendors[:data].count).to eq(5)

      first_vendor = vendors[:data].first

      expect(first_vendor).to have_key(:id)
      expect(first_vendor[:id]).to eq('55340')

      expect(first_vendor).to have_key(:type)
      expect(first_vendor[:type]).to eq('vendor')

      expect(first_vendor).to have_key(:attributes)
      expect(first_vendor[:attributes]).to be_a Hash

      expect(first_vendor[:attributes]).to have_key(:name)
      expect(first_vendor[:attributes][:name]).to be_a String

      expect(first_vendor[:attributes]).to have_key(:description)
      expect(first_vendor[:attributes][:description]).to be_a String

      expect(first_vendor[:attributes]).to have_key(:contact_name)
      expect(first_vendor[:attributes][:contact_name]).to be_a String

      expect(first_vendor[:attributes]).to have_key(:contact_phone)
      expect(first_vendor[:attributes][:contact_phone]).to be_a String

      expect(first_vendor[:attributes]).to have_key(:credit_accepted)
      expect(first_vendor[:attributes][:credit_accepted]).to be_a(TrueClass).or be_a(FalseClass)

    end

    it 'returns vendor info' do
      vendor = MarketMoneyService.new.vendor(55297)

      expect(vendor).to be_a Hash
      expect(vendor[:data]).to be_a Hash

      expect(vendor[:data]).to have_key(:id)
      expect(vendor[:data][:id]).to be_a String

      expect(vendor[:data]).to have_key(:type)
      expect(vendor[:data][:type]).to be_a String

      expect(vendor[:data]).to have_key(:attributes)
      expect(vendor[:data][:attributes]).to be_a Hash

      expect(vendor[:data][:attributes]).to have_key(:name)
      expect(vendor[:data][:attributes][:name]).to be_a String

      expect(vendor[:data][:attributes]).to have_key(:description)
      expect(vendor[:data][:attributes][:description]).to be_a String

      expect(vendor[:data][:attributes]).to have_key(:contact_name)
      expect(vendor[:data][:attributes][:contact_name]).to be_a String

      expect(vendor[:data][:attributes]).to have_key(:contact_phone)
      expect(vendor[:data][:attributes][:contact_phone]).to be_a String

      expect(vendor[:data][:attributes]).to have_key(:credit_accepted)
      expect(vendor[:data][:attributes][:credit_accepted]).to be_a(TrueClass).or be_a(FalseClass)
    end
  end
end
