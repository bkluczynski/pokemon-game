require 'game'

describe Game do

  let(:titus) { double :player }
  let(:karol) { double :player }
  subject(:game) { described_class.new }
  describe "#attack" do
    it "reduces the players hit_points by 10" do
      expect(titus).to receive(:receive_damage)
      game.attack(titus)
    end
  end
end
