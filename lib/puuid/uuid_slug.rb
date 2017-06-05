require "base64"

# buf: a uuid as a 16-byte binary string
# str: a uuid formatted as a 36-byte string
module PUUID
  class UUIDSlug
    def self.buf2str(buf)
      buf.unpack("H8H4H4H4H12").join("-")
    end

    def self.str2buf(str)
      [str.gsub(/[^0-9A-Fa-f]/, "")].pack("H*")
    end

    def self.uuid2slug(str)
      [str2buf(str)].pack("m0").tr("+/", "-_").strip[0..-3]
    end

    def self.slug2uuid(str)
      str = str.tr("-_", "+/")
      # Ruby versions prior to 2.3 requires the string to be divisible by 4
      # For base64 to work the string must be divisible by 4. In Ruby 2.3+ the
      # string is automatically padded but not in prior versions.
      # Ref: https://ruby-doc.org/stdlib-2.3.1/libdoc/base64/rdoc/Base64.html
      if !str.end_with?("=") && str.length % 4 != 0
        str = str.ljust((str.length + 3) & ~3, "=")
      end
      buf2str str.unpack("m0").first
    end
  end
end
