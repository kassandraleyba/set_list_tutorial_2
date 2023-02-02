require 'rails_helper'

RSpec.describe Song, type: :model do
  # type is optional
  it {should belong_to :artist}
end