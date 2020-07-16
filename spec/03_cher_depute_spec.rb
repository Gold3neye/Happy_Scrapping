require_relative '../lib/03_cher_depute'


describe "number of results" do
  it "au minimum 10" do
    expect(connect().count).to be > 10
  end
end