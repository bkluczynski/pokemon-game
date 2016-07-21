require 'game'

describe Game do
subject(:game) { described_class.new(Player.new, Player.new) }
subject(:gringo) { Player.new("Gringo") }
subject(:amigo) { Player.new("Amigo") }


describe '#attack' do
  it 'damages the player' do
    expect(amigo).to receive(:damage_taken)
    game.attack(amigo)
  end
end





end
