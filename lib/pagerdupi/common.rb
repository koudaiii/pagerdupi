module Pagerdupi
  class Client
    include HTTParty
    format :json
    base_uri 'https://api.pagerduty.com'

    def initialize(api_token)
      @api_token = api_token
      @options = {
        headers: {
          'Authorization' => "Token token=#{@api_token}",
          'Content-type' => 'application/json',
          'Accept' => 'application/vnd.pagerduty+json;version=2'
        },
        output: 'json'
      }
    end

    def get(req, opts = {})
      opts = opts.merge(@options)
      self.class.get("#{req}", opts)
    end

    def post(req, opts = {})
      opts = opts.merge(@options)
      self.class.post("#{req}", opts)
    end

    def patch(req, opts = {})
      opts = opts.merge(@options)
      self.class.patch("#{req}", opts)
    end

    def put(req, opts = {})
      opts = opts.merge(@options)
      self.class.put("#{req}", opts)
    end

    def delete(req, opts = {})
      opts = opts.merge(@options)
      self.class.delete("#{req}", opts)
    end
  end
end
