require 'rails_helper'

RSpec.describe Vendor do
  before :each do
    data = {
      id: '1',
      attributes:
        {
          name: 'The Charcuterie Corner',
          contact_name: 'Claudie Langworth',
          contact_phone: '1-800-555-8888',
          credit_accepted: false,
          description: 'Sell meat and cheese'
        }
    }

    data2 = {
      id: '1',
      attributes:
        {
          name: 'The Charcuterie Corner',
          contact_name: 'Claudie Langworth',
          contact_phone: '1-800-555-8888',
          credit_accepted: true,
          description: 'Sell meat and cheese'
        }
    }
    @vendor = Vendor.new(data)
    @vendor2 = Vendor.new(data2)
  end

  it 'exist' do
    expect(@vendor).to be_a Vendor
    expect(@vendor.id).to eq('1')
    expect(@vendor.name).to eq('The Charcuterie Corner')
    expect(@vendor.contact_name).to eq('Claudie Langworth')
    expect(@vendor.contact_phone).to eq('1-800-555-8888')
    expect(@vendor.description).to eq('Sell meat and cheese')
    expect(@vendor.credit_accepted).to eq(false)
  end

  describe '#credit' do
    it 'shows yes or no depending on credit accepted value' do
      expect(@vendor.credit).to eq('No')
      expect(@vendor2.credit).to eq('Yes')
    end
  end
end
