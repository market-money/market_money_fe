require 'rails_helper'

RSpec.describe '/vendors/id' do
  describe 'as a visitor' do
    describe 'when I visit /vendors/id', :vcr do
      it 'shows vendors information on contact phone, description and credit accepted' do
        visit '/vendors/56282'
        
        expect(page).to have_content('Bookish Bazaar')
        expect(page).to have_content('Contact Info:')
        expect(page).to have_content('Name: Kanesha Rippin')
        expect(page).to have_content('Phone: 1-223-658-3770')
        expect(page).to have_content('Credit Accepted?: Yes')
        expect(page).to have_content('Description: A vibrant and colorful stall offering a diverse selection of books from around the world, as well as handmade bookmarks and reading accessories.')
      end
    end
  end
end