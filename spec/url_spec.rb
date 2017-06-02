require "puuid/url"

RSpec.describe PUUID::URL do
  describe ".uuid_for" do
    it "raises an argument error when arguments are nil" do
      expect{
        PUUID::URL.uuid_for("foobar", nil)
      }.to raise_error(ArgumentError)
    end

    it "returns a uuid constructed from a url-formed namespace and arguments" do
      uuid = PUUID::URL.uuid_for("foobar", "123", "456")
      expect(uuid).to eql("9f712871-3bfc-57e5-85b0-241b2785547a")
    end
  end

  describe ".financial_donor" do
    it "returns a uuid" do
      uuid = PUUID::URL.financial_donor("foobar")
      expect(uuid).to eql("1cff72ff-a547-5dd9-ae53-d2883af26904")
    end
  end

  describe ".layer_id_for_charity_direct" do
    it "returns a uuid" do
      uuid = PUUID::URL.layer_id_for_charity_direct("foobar")
      expect(uuid).to eql("c3266757-a717-54b7-9d42-e4529d0afbbc")
    end
  end

  describe ".layer_id_for_campaign_p2p" do
    it "returns a uuid" do
      uuid = PUUID::URL.layer_id_for_campaign_p2p("foobar")
      expect(uuid).to eql("ed26915a-b849-5b1a-b400-80ea8f540673")
    end
  end

  describe ".layer_id_for_beneficiary_p2p" do
    it "returns a uuid" do
      uuid = PUUID::URL.layer_id_for_beneficiary_p2p("foobar")
      expect(uuid).to eql("97b54793-3858-5eac-a92a-5f3027431ff3")
    end
  end

  describe ".layer_id_for_page_p2p" do
    it "returns a uuid" do
      uuid = PUUID::URL.layer_id_for_page_p2p("foobar")
      expect(uuid).to eql("b7808904-552c-5f02-ade5-4ff51d994aa5")
    end
  end
end
