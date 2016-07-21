require 'player'

describe Player do
  subject(:dave) { Player.new('Dave') }
  subject(:john) { Player.new('John') }

  describe '#name' do
    it 'returns the name' do
      expect(dave.name).to eq 'Dave'
    end
  end

  describe "#hit_points" do
    it 'returns the player default HP' do
     expect(dave.hit_points).to eq Player::DEFAULT_HITPOINTS
    end
  end

  describe "#damage received" do
    it "reduces the attacked player's hit points" do
      expect(john).to respond_to(:damage_received)
    end
  end

  describe "#attack" do
    it "player 1 attacks player 2" do
      expect { john.damage_received }.to change { john.hit_points }.by(-10)
      dave.attack(john)
    end
  end




end
