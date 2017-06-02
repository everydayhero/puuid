require "digest/sha1"

module PUUID
  class URL
    # source: http://www.rubydoc.info/gems/ruby-uuid/0.0.1/UUID
    # NAMESPACE = NameSpace_URL.raw_bytes
    NAMESPACE = "k\xA7\xB8\x11\x9D\xAD\x11\xD1\x80\xB4\x00\xC0O\xD40\xC8".freeze

    def self.uuid_for(namespace, *args)
      raise ArgumentError, "all arguments cannot be nil" unless args.all?{|a| !a.nil? }

      url = "http://everydayhero.com/#{namespace}/#{args.join("/")}"
      UUID.uuid_v5(NAMESPACE, url)
    end

    def self.financial_donor(donation_id)
      uuid_for(__method__, donation_id)
    end

    def self.layer_id_for_charity_direct(charity_uuid)
      uuid_for(__method__, charity_uuid)
    end

    def self.layer_id_for_campaign_p2p(campaign_uuid)
      uuid_for(__method__, campaign_uuid)
    end

    def self.layer_id_for_beneficiary_p2p(beneficiary_uuid)
      uuid_for(__method__, beneficiary_uuid)
    end

    def self.layer_id_for_page_p2p(page_uuid)
      uuid_for(__method__, page_uuid)
    end
  end
end
