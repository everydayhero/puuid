require "puuid/uuid_slug"

RSpec.describe PUUID::UUIDSlug do
  let(:uuid_string){ "58e4e9c5-1bf0-018f-4bfe-d26c592745f5" }
  let(:slug_uuid){ "WOTpxRvwAY9L_tJsWSdF9Q" }

  describe ".slug2uuid" do
    it "converts to a slug from a uuid" do
      uuid = PUUID::UUIDSlug.slug2uuid(slug_uuid)
      expect(uuid).to eql(uuid_string)
    end
  end

  describe ".uuid2slug" do
    it "converts to a uuid from a slug" do
      slug = PUUID::UUIDSlug.uuid2slug(uuid_string)
      expect(slug).to eql(slug_uuid)
    end
  end
end
