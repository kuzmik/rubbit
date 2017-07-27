module Rubbit
  # Decodes the DER encoded mess of gunk we get from the FROG
  class Decoder
    def self.decode(der)
      begin
        croaks = OpenSSL::ASN1.decode(der).value
      rescue StandardError => ex
        puts "Can't decode messages. Message: #{ex.message}"
      end

      collected_tips = {}

      croaks.each do |croak|
        id = croak.value[0].value.to_i
        tip = croak.value[1].value.to_s
        collected_tips[id] = tip
      end

      collected_tips
    end
  end
end
