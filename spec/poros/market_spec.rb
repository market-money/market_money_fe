require 'rails_helper'

RSpec.describe Market do
  it 'exist' do
    data = {
      id: '1',
      attributes:
        {
          name: "14&U Farmers' Market",
          city: 'Washington',
          state: 'District of Columbia'
        }
    }

    market = Market.new(data)
    expect(market).to be_a Market
    expect(market.id).to eq('1')
    expect(market.name).to eq("14&U Farmers' Market")
    expect(market.city).to eq('Washington')
    expect(market.state).to eq('District of Columbia')
  end
end