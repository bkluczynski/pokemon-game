require 'game'

describe Game do

  let(:titus) { double :player }
  let(:karol) { double :player }
  subject(:game) { described_class.new(titus, karol) }

  describe "#attack" do
    it "reduces the players hit_points by 10" do
      expect(titus).to receive(:receive_damage)
      game.attack(titus)
    end
  end

  describe "#player_1" do
    it "returns player 1" do
      expect(game.player_1).to eq titus
    end
  end

  describe "#player_2" do
    it "returns player 2" do
      expect(game.player_2).to eq karol
    end
  end

  describe "#current_turn" do
    it "starts the game with player 1" do
      expect(game.current_turn).to eq titus
    end
  end

  describe "#switch_player" do
    it "switches current attacking player" do
      game.switch_player
      expect(game.current_turn).to eq karol
    end
  end

end
