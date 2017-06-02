require "spec_helper"

RSpec.describe Puuid do
  it "has a version number" do
    expect(Puuid::VERSION).not_to be nil
  end
end
