class MarketFacade
  def markets
    json = MarketMoneyService.new.markets
    json[:data].map do |market_data|
      Market.new(market_data)
    end
  end

  def market(id)
    json = MarketMoneyService.new.market(id)
    Market.new(json[:data])
  end

  def market_vendors(id)
    json = MarketMoneyService.new.vendors(id)
    json[:data].map do |vendor_data|
      Vendor.new(vendor_data)
    end
  end
end
