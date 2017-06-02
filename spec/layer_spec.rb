require "puuid/layer"

RSpec.describe PUUID::Layer do
  describe ".beneficiary" do
    it "returns predictable uuids" do
      expect(
        PUUID::Layer.beneficiary("beneficiary-id")
      ).to eql("b7d3ef11-3020-534c-9432-21939fb0c9e3")
    end

    it "returns uuids that vary by input" do
      uuid1 = PUUID::Layer.beneficiary("foo")
      uuid2 = PUUID::Layer.beneficiary("bar")

      expect(uuid1).to_not eql(uuid2)
    end
  end

  describe ".campaign_p2p" do
    it "returns predictable uuids" do
      expect(
        PUUID::Layer.campaign_p2p("campaign-id")
      ).to eql("1f3f2c66-88cb-5000-a6e9-7cdc56799a43")
    end

    it "returns uuids that vary by input" do
      uuid1 = PUUID::Layer.campaign_p2p("foo")
      uuid2 = PUUID::Layer.campaign_p2p("bar")

      expect(uuid1).to_not eql(uuid2)
    end
  end

  describe ".direct_donation" do
    it "returns predictable uuids" do
      expect(
        PUUID::Layer.direct_donation("beneficiary-id")
      ).to eql("42d16c9c-37fa-57cb-877a-3badfffab740")
    end

    it "returns uuids that vary by input" do
      uuid1 = PUUID::Layer.direct_donation("foo")
      uuid2 = PUUID::Layer.direct_donation("bar")

      expect(uuid1).to_not eql(uuid2)
    end
  end

  describe ".recurring_donation" do
    it "returns predictable uuids" do
      expect(
        PUUID::Layer.recurring_donation("beneficiary-id")
      ).to eql("e98bfc0b-860c-5cbf-a2f2-7ef16466dbff")
    end

    it "returns uuids that vary by input" do
      uuid1 = PUUID::Layer.recurring_donation("foo")
      uuid2 = PUUID::Layer.recurring_donation("bar")

      expect(uuid1).to_not eql(uuid2)
    end
  end

  describe ".appeal" do
    it "returns predictable uuids" do
      expect(
        PUUID::Layer.appeal("campaign-id")
      ).to eql("337510fa-9426-5737-b93c-921791426039")
    end

    it "returns uuids that vary by input" do
      uuid1 = PUUID::Layer.appeal("foo")
      uuid2 = PUUID::Layer.appeal("bar")

      expect(uuid1).to_not eql(uuid2)
    end
  end

  describe ".beneficiary_campaign_participation" do
    it "returns predictable uuids" do
      expect(
        PUUID::Layer.beneficiary_campaign_participation("campaign-id", "beneficiary-id")
      ).to eql("97bf0d02-b4d6-593e-8e7e-24e20ee3594a")
    end

    it "returns uuids that vary by input" do
      uuid1 = PUUID::Layer.beneficiary_campaign_participation("foo", "bar")
      uuid2 = PUUID::Layer.beneficiary_campaign_participation("bar", "foo")

      expect(uuid1).to_not eql(uuid2)
    end
  end
end
