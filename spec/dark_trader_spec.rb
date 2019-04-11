require_relative '../lib/dark_trader'

describe "dark_trader method" do
  it "should return the bitcoin name and price" do
    expect(dark_trader("BTC")).to eq("$5065.52")
    expect(dark_trader("XRT")).to eq("$0.000011")
  end
do
