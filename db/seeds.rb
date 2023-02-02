# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


@prince = Artist.create!(name: 'Prince')
@purple = Song.create!(title: 'Purple Rain', length: 564, play_count: 645365, artist_id: @prince.id)
@beret = Song.create!(title: 'Raspberry Beret', length: 864, play_count: 65, artist_id: @prince.id)