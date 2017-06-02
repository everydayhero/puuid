require "puuid/uuid"

RSpec.describe PUUID::UUID do
  describe ".uuid_v5" do
    it "returns a non-random uuid" do
      expect(
        PUUID::UUID.uuid_v5("foo", "bar")
      ).to eql("8843d7f9-2416-511d-a9eb-b963ff4ce281")
    end

    it "returns uuids that vary by input" do
      uuid1 = PUUID::UUID.uuid_v5("foo", "bar")
      uuid2 = PUUID::UUID.uuid_v5("foo", "baz")

      expect(uuid1).to_not eql(uuid2)
    end
  end
end
