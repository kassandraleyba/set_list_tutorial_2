require 'rails_helper'

# As a visitor
# When I visit the artist index
# And click 'edit' next to an artist
# then i am taken to an edit artist form
# when i enter a new name for the artist
# and click a button to update artist
# then i am redirected back to the artist index
# and i see the updated name

RSpec.describe 'the artist edit' do
  it 'links to the edit page' do
    artist = Artist.create!(name: "Prince")

    visit '/artists'
    
    click_button "Edit #{artist.name}"

    expect(current_path).to eq("/artists/#{artist.id}/edit")
  end

  it 'can edit the artist' do
    artist = Artist.create!(name: 'Princ')

    visit "/artists"

    expect(page).to have_content("Princ")

    click_button "Edit Princ"

    fill_in "Name", with: "Prince"
    click_button "Update Artist"

    expect(current_path).to eq("/artists")
    expect(page).to have_content("Prince")
  end
end