# frozen_string_literal: true

RSpec.describe UnicodeConverter do
  it "has a version number" do
    expect(UnicodeConverter::VERSION).not_to be nil
  end

  it "Ligature non-joining muddles and semi-muddles" do
    expect(UnicodeConverter.nfc("ガギグゲゴ")).to eq("ガギグゲゴ")
    expect(UnicodeConverter.nfc("パピプペポ")).to eq("パピプペポ")
  end
end
