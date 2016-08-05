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
  end
end
