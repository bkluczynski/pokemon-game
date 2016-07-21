require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }

  describe "#attack" do
    it "player 1 attacks player 2" do
      expect(player_2).to receive(:damage_received)
      game.attack(player_2)
    end
  end

  describe "player_1" do
    it "returns the player_1" do
      expect(game.player_1).to eq player_1
    end
  end

  describe "player_2" do
    it "returns the player_2" do
      expect(game.player_2).to eq player_2
    end
  end

end
