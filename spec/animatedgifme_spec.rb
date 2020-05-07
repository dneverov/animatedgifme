RSpec.describe Animatedgifme do
  REG_GIF_URL = /^http(s)*:\/\/animatedgif.me\/uploads\/[\da-f]+.(gif|jpg|png)$/

  it "has a version number" do
    expect(Animatedgifme::VERSION).not_to be nil
  end

  context "#find" do
    it "returns nil" do
      url = Animatedgifme.find(585858)
      expect(url).to eq(nil)
    end

    it "returns URL to gif" do
      url = Animatedgifme.find(1189)
      expect(url).to match(REG_GIF_URL)
    end
  end

  context "#tagged" do
    it "returns URL to gif" do
      url = Animatedgifme.tagged("import")
      expect(url).to match(REG_GIF_URL)
    end
  end

  context "#random" do
    it "returns URL to gif" do
      url = Animatedgifme.random("import")
      expect(url).to match(REG_GIF_URL)
    end
  end
end
