# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Song, type: :model do
  it 'is valid with valid attributes' do
    song = build(:song)
    expect(song).to be_valid
  end

  it 'is not valid without a title' do
    song = build(:song, title: nil)
    expect(song).not_to be_valid
  end
end
