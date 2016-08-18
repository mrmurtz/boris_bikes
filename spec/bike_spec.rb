require "bike"

describe Bike do
  it "bike instances respond to method working" do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end

  describe '#report_broken' do
    it "responds to report_broken method" do
      expect(subject).to respond_to(:report_broken)
    end
    it "returns true to report_broken" do
      expect(subject.report_broken).to eq true
    end
    it "can be reported broken" do
      subject.report_broken
      expect(subject).to be_broken
    end
  end

  describe '#broken?' do
    it "responds to broken?" do
      expect(subject).to respond_to(:broken?)
    end
    # it 'returns true to broken? when broken' do
    #   broken_bike = subject.report_broken
    #   expect(broken_bike.broken?).to eq true
    # end
  end
end
