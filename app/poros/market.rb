class Market
  attr_reader :name,
              :city,
              :state,
              :id

  def initialize(data)
    @name = data[:attributes][:name]
    @city = data[:attributes][:city]
    @state = data[:attributes][:state]
    @id = data[:id]
  end
end
