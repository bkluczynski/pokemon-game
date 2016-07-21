require 'game'

describe Game do

  subject(:game) { described_class.new }
  let(:john) { Player.new('John') }

  describe "#attack" do
    it "player 1 attacks player 2" do
      expect(john).to respond_to(:damage_received)
      game.attack(john)
    end
  end

end
