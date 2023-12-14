class VendorFacade
  def vendor(id)
    json = MarketMoneyService.new.vendor(id)
    Vendor.new(json[:data])
  end
end