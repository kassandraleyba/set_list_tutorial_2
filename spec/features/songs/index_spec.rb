require 'rails_helper'

RSpec.describe 'the songs index page', type: :feature do
  # next grab the user story to test
  # As a user,
  # when I visit '/songs'
  # I see each song's title and play count

  describe "As a user" do
    describe "when I visit '/songs'" do
      it "I see each song's title and play count" do
        artist = Artist.create(name: 'Carly Rae Jepsen')
        song_1 = artist.songs.create!(title: 'I Really Like You', length: 208, play_count: 2456357)
        song_2 = artist.songs.create!(title: 'Call Me Maybe', length: 207, play_count: 2456357)

        visit '/songs'
        # this runs capybara's integrated process
        # these are view tests (testing what user sees)
        expect(page).to have_content(song_1.title)
        expect(page).to have_content("Play Count: #{song_1.play_count}")
        expect(page).to have_content(song_2.title)
        expect(page).to have_content("Play Count: #{song_2.play_count}")
      end
    end
  end
end