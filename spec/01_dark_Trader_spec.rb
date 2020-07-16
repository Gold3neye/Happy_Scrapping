require_relative '../lib/01_dark_Trader'

describe "the crypto scrapper function" do
  it "should be a hash" do
    expect(dark_Trader).to be_instance_of(Hash)
  end
  it "should not be nil" do
    expect(dark_Trader).not_to be_nil
  end
  it "should not be empty" do
    expect(dark_Trader).not_to be_empty
  end
end
