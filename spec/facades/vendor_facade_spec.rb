require 'rails_helper'

describe VendorFacade do
  context 'vendor', :vcr do
    it 'shows vendor info' do
      vendor = VendorFacade.new.vendor(55297)

      expect(vendor.name).to eq('Orange County Olive Oil')
    end
  end
end