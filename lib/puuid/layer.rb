module PUUID
  class Layer
    APPEAL_NAMESPACE = "a4e7d9fd-2a3c-48fb-a27a-e8f641f7f475".freeze
    BENEFICIARY_CAMPAIGN_PARTICIPATION_NAMESPACE = "3b3837db-0807-49d8-ad58-6d6a66dc860f".freeze
    BENEFICIARY_NAMESPACE = "7a927674-96d0-443c-b139-212e57fd836f".freeze
    CAMPAIGN_P2P_NAMESPACE = "4391f821-0c5f-46e3-a9cd-118e7a7fb170".freeze
    DIRECT_DONATION_NAMESPACE = "2f6ae3f0-ecf9-42c5-a13c-be5873d61e46".freeze
    RECURRING_DONATION_NAMESPACE = "a748ed74-2914-4ea4-9d3f-d37c15916f71".freeze
    MARKETPLACE_NAMESPACE = "df73912b-cc8d-4a44-9680-39acf196e737".freeze

    def self.appeal(campaign_id)
      UUID.uuid_v5(APPEAL_NAMESPACE, campaign_id)
    end

    def self.beneficiary(beneficiary_id)
      UUID.uuid_v5(BENEFICIARY_NAMESPACE, beneficiary_id)
    end

    def self.beneficiary_campaign_participation(campaign_id, beneficiary_id)
      UUID.uuid_v5(BENEFICIARY_CAMPAIGN_PARTICIPATION_NAMESPACE, campaign_id + beneficiary_id)
    end

    def self.campaign_p2p(campaign_id)
      UUID.uuid_v5(CAMPAIGN_P2P_NAMESPACE, campaign_id)
    end

    def self.direct_donation(beneficiary_id)
      UUID.uuid_v5(DIRECT_DONATION_NAMESPACE, beneficiary_id)
    end

    def self.recurring_donation(beneficiary_id)
      UUID.uuid_v5(RECURRING_DONATION_NAMESPACE, beneficiary_id)
    end

    def self.marketplace(marketplace_id)
      URL.uuid_for(MARKETPLACE_NAMESPACE, marketplace_id)
    end
  end
end
