require 'rails_helper'

RSpec.describe '/market/id' do
  describe 'as a visitor' do
    describe 'when I visit /markets/id' do
      it 'shows the list of market name, address and list of vendors' do
        visit '/markets/322482'

        expect(page).to have_content('39 North Marketplace')
        expect(page).to have_content('Downtown Sparks Victorian Ave')
        expect(page).to have_content('Sparks, Nevada 89431')
        expect(page).to have_content('Vendors at our Market:')
        expect(page).to have_content('Saddle Up Smoothie')
        expect(page).to have_content('Bookish Bazaar')
        expect(page).to have_content('The Freshly Squeezed Company')
        expect(page).to have_content('The Sourdough Queen')
        expect(page).to have_content('Colorful Comforts')
      end

      it 'takes you to vendor show page when you click on vendor' do
        visit '/markets/322482'

        click_link('Bookish Bazaar')

        expect(current_path).to eq('/vendors/56282')
      end
    end
  end
end