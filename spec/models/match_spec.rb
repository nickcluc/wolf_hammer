require 'rails_helper'

describe Match do

  let(:player_list) { build_list(:player, 4) }
  let(:match) { build_stubbed(:match, players: player_list) }

  it 'has a valid factory' do
    expect(build(:match, players: player_list)).to be_valid
  end

  it 'has a maximum number of players' do
    stub_const("MAX_NUMBER_OF_PLAYERS", 4)
    expect{ match.players << build_stubbed(:player) }.to raise_error("Cannot have more than 4 players in a match")
  end
end
