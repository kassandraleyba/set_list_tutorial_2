class Artist < ApplicationRecord
  # AR association and foreign key migration
  has_many :songs

  def average_song_length
    self.songs.average(:length)
  end
end