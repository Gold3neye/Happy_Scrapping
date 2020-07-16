require_relative '../lib/01_dark_Trader'

describe "Vérifier le nombre de résultats" do
  it "au minimum 10" do
    expect(get_crypto().count).to be > 10
  end
  it "should not be nil" do
    expect(get_crypto).not_to be_nil
  end
end