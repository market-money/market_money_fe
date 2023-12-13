require 'rails_helper' # rubocop:disable Style/FrozenStringLiteralComment

RSpec.describe '/market' do


  describe 'as a visitor' do
    describe 'when I visit /markets' do
      it 'shows the list of markets name, city, state and button for more info' do
        visit '/markets'

        expect(page).to have_content('Markets')

        within("#market-#{@market.id}") do
          expect(page).to have_content("14&U Farmers' Market")
          expect(page).to have_content('Washington')
          expect(page).to have_content('District of Columbia')
          expect(page).to have_button('More Info')
        end
      end
    end
  end
end
