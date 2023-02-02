require 'rails_helper'

RSpec.describe Artist, type: :model do
  # type is optional
  it {should have_many :songs}

  describe 'instance methods' do
    describe '#average_song_length' do
      before :each do
        @prince = Artist.create!(name: 'Prince')
        @purple = Song.create!(title: 'Purple Rain', length: 564, play_count: 645365, artist_id: @prince.id)
        @beret = Song.create!(title: 'Raspberry Beret', length: 864, play_count: 65, artist_id: @prince.id)
        @new_song = Song.create!(title: 'Raspberry Beret', length: 1, play_count: 65, artist_id: @prince.id)
      end

      it 'returns the average song length' do
        expect(@prince.average_song_length.round(2)).to eq(476.33)
      end
    end
  end
end