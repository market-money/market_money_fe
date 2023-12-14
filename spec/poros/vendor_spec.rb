require 'rails_helper'

RSpec.describe Vendor do
  it 'exist' do
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

    vendor = Vendor.new(data)
    expect(vendor).to be_a Vendor
    expect(vendor.id).to eq('1')
    expect(vendor.name).to eq('The Charcuterie Corner')
    expect(vendor.contact_name).to eq('Claudie Langworth')
    expect(vendor.contact_phone).to eq('1-800-555-8888')
    expect(vendor.description).to eq('Sell meat and cheese')
    expect(vendor.credit_accepted).to eq(false)
  end
end