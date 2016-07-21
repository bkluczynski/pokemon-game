require 'player'

describe Player do

  subject(:titus) { described_class.new("Titus") }

  describe "#name" do
    it 'returns the name of a player' do
      expect(titus.name).to eq "Titus"
    end
  end

  describe "#hit_points" do
    it "starts with the default amount of hit points" do
      expect(titus.hit_points).to eq 60
    end
  end
end
