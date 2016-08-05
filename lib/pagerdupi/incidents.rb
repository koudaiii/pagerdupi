module Pagerdupi
  class Incident

    def initialize(api_key)
      @pagerdupi = Pagerdupi::Client.new(api_key)
    end

    def list(params = {})
      default_params = {
        limit: 25,
        since: (Time.now - 7 * 24 * 60 * 60).strftime('%Y-%m-%d'),
        until: Time.now.strftime('%Y-%m-%d'),
        time_zone: 'UTC',
      }
      query_params = default_params.merge(params)

      Hashie::Mash.new(@pagerdupi.get('/incidents', query: query_params))
    end

    def show(params = {})
    end

    def create(params = {})
    end

    def update(params = {})
    end

    def delete(params = {})
    end
  end
end
