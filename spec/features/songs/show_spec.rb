require 'rails_helper'
# do this at the top of every spec file

RSpec.describe 'the songs show page' do

  # As a visitor
  # When I visit /songs/1 (where 1 is the id of a song in my database)
  # Then I see that song's title, and artist
  # And I do not see any of the other songs in my database
  
  # ^^^^ this is a user story that we use for tests below
  # describes the functionality of what is stated above


  it 'displays the song title' do
    artist = Artist.create(name: 'Carly Rae Jepsen')
    song = artist.songs.create!(title: 'I Really Like You', length: 208, play_count: 2456357)
    song_2 = artist.songs.create!(title: 'Call Me Maybe', length: 207, play_count: 2456357)
    
    visit "/songs/#{song.id}"
    # this is like going into your browser and saying 'go to localhost:3000 and give me first song'

    expect(page).to have_content(song.title)
    # should see this title
    expect(page).to_not have_content(song_2.title)
    # should not see this title
  end

  it 'displays the name of the artist for the song' do
    artist = Artist.create(name: 'Carly Rae Jepsen')
    song = artist.songs.create!(title: 'I Really Like You', length: 208, play_count: 2456357)
    song_2 = artist.songs.create!(title: 'Call Me Maybe', length: 207, play_count: 2456357)
    
    visit "/songs/#{song.id}"
    # save_and_open_page
    expect(page).to have_content(artist.name)
  end
  # feature tests are meant to test how the user will experience it
  # more like an integration test because we are testing the final behavior of the site - how the user would experience it
end