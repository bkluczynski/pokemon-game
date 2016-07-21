require 'player'

describe Player do

  subject(:titus) { described_class.new("Titus") }
  subject(:karol) { described_class.new("Karol") }

  describe "#name" do
    it 'returns the name of a player' do
      expect(titus.name).to eq "Titus"
    end
  end

  describe "#hit_points" do
    it "starts with the default amount of hit points" do
      expect(titus.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

end
