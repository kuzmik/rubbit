module Rubbit
  # HTTP Client that connects to the FROG api and downloads croaks
  class Client
    def initialize(args = {})
      @endpoint = args[:endpoint] || 'http://frog.tips/api/1/tips'
      @headers = { 'Accept' => 'application/der-stream' }
      @headers << args[:headers] if args[:headers]
      @cache = args[:cache]
    end

    # Download 50 random FROG tips from the api, DER decode them, then cache them
    def croak
      current = {}
      if @cache
        begin
          current = YAML.load_file(@cache)
        rescue Errno::ENOENT
          puts 'Unable to load cache'
        end
      end

      begin
        tips = open(@endpoint, @headers).read
      rescue StandardError => ex
        puts "Error: Unable to fetch new FROG tips, please check your owners manual, pages 45-47. Message: #{ex.message}"
      end

      decoded_tips = current.merge(Decoder.decode(tips))

      # Save the tips to the local cache
      if @cache
        File.open(@cache, 'w') do |dump|
          dump.write(decoded_tips.sort.to_h.to_yaml)
        end
      end

      @frog_tips = decoded_tips
    end

    # Get a random FROG tip from either the cache or the API
    def frog_tip
      croak unless @frog_tips

      @frog_tips[@frog_tips.keys.sample]
    end
  end
end
