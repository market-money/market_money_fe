class MarketsController < ApplicationController # rubocop:disable Style/FrozenStringLiteralComment,Style/Documentation
  def index
    conn = Faraday.new(url: 'http://localhost:3000')
    response = conn.get('/api/v0/markets')
    json = JSON.parse(response.body, symbolize_names: true)
    @markets = json[:data].map do |market_data|
      Market.new(market_data)
    end
  end

  def show
    conn = Faraday.new(url: 'http://localhost:3000')
    response = conn.get("/api/v0/markets/#{params[:id]}")
    json = JSON.parse(response.body, symbolize_names: true)[:data]
    vendor_response = conn.get("/api/v0/markets/#{params[:id]}/vendors")
    vendor_json = JSON.parse(vendor_response.body, symbolize_names: true)
    @market = Market.new(json)
    @vendors = vendor_json[:data].map do |vendor_data|
      Vendor.new(vendor_data)
    end
  end
end
