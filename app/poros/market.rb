class Market
  attr_reader :name,
              :city,
              :state,
              :id,
              :zip,
              :address

  def initialize(data)
    @name = data[:attributes][:name]
    @city = data[:attributes][:city]
    @state = data[:attributes][:state]
    @address = data[:attributes][:street]
    @zip = data[:attributes][:zip]
    @id = data[:id]
  end
end
