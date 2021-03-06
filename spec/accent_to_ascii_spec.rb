require "spec_helper"

describe AccentToAscii do
  it "has a version number" do
    expect(AccentToAscii::VERSION).not_to be nil
  end

  it { expect("São Paulo".accent_to_ascii).to eq "Sao Paulo" }
  it { expect("Tẽst".accent_to_ascii).to eq "Test" }

  it "does not change original string" do
    str = "São Paulo"
    expect(str.accent_to_ascii).to eq "Sao Paulo"
    expect(str).to eq "São Paulo"
  end

  context "hungarian accents" do
    specify { expect("fejlődő".accent_to_ascii).to eq "fejlodo" }
    specify { expect("FEJLŐDŐ".accent_to_ascii).to eq "FEJLODO" }
    specify { expect("fű".accent_to_ascii).to eq "fu" }
    specify { expect("FŰ".accent_to_ascii).to eq "FU" }
  end

  context "accent_to_ascii!" do
    let(:str) { "São Paulo" }

    it "changes original string" do
      expect(str.accent_to_ascii!).to eq "Sao Paulo"
      expect(str).to eq "Sao Paulo"
    end
  end
end
