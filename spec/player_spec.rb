require './lib/player.rb'

describe Player do
  subject(:gringo) { Player.new("Gringo") }
  subject(:amigo) { Player.new("Amigo") }

  describe '#name' do
    it 'returns the name' do
      expect(gringo.name).to eq 'Gringo'
    end

  end
  describe '#hit_points' do
    it 'returns the hit_points' do
      expect(gringo.hit_points).to eq Player::DEFAULT_HITPOINTS
    end
  end
  # describe '#attack' do
  #   it 'damages the player' do
  #     expect(amigo).to receive(:damage_taken)
  #     gringo.attack(amigo)
  #   end
  # end
  #
  describe '#damage_taken' do
    it 'reduces the player hit points' do
      expect { amigo.damage_taken }.to change { amigo.hit_points }.by(-10)
    end
  end



end
