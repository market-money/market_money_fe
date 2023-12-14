require 'rails_helper' # rubocop:disable Style/FrozenStringLiteralComment

RSpec.describe '/market' do
  describe 'as a visitor' do
    describe 'when I visit /markets' do
      it 'shows the list of markets name, city, state and button for more info' do
        visit '/markets'

        expect(page).to have_content('Markets')

        within("#market-322458") do
          expect(page).to have_content("14&U Farmers' Market")
          expect(page).to have_content('Washington')
          expect(page).to have_content('District of Columbia')
          expect(page).to have_button('More Info')
        end
      end

      it 'takes you to the markets show page when you click more info' do
        visit '/markets'

        within("#market-322458") do
          click_button('More Info')
        end

        expect(current_path).to eq('/markets/322458')
      end
    end
  end
end
