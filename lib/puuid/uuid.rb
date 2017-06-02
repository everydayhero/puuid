require "digest/sha1"

module PUUID
  class UUID
    def self.uuid_v5(namespace, name)
      hash = Digest::SHA1.new
      hash.update(namespace)
      hash.update(name)

      ary = hash.digest.unpack("NnnnnN")
      ary[2] = (ary[2] & 0x0FFF) | 20480
      ary[3] = (ary[3] & 0x3FFF) | 0x8000

      "%08x-%04x-%04x-%04x-%04x%08x" % ary
    end
  end
end
