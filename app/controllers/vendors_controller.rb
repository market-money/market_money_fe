class VendorsController < ApplicationController
  def show
    conn = Faraday.new(url: 'http://localhost:3000')
    vendor_response = conn.get("/api/v0/vendors/#{params[:id]}")
    vendor_json = JSON.parse(vendor_response.body, symbolize_names: true)[:data]
    @vendor = Vendor.new(vendor_json)
  end
end