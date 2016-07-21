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
      expect(titus.hit_points).to eq 60
    end
  end

  describe "#attack" do
    it "reduces the players hit_points by 10" do
      expect{ karol.attack(titus) }.to change{ titus.hit_points }.by (-10)
    end
  end
end
