module Pagerdupi
  class Notification
    def initialize(api_key)
      @pagerdupi = Pagerdupi::Client.new(api_key)
    end

    def get_notifications(params = {})
      default_params = {
        limit: 25,
        time_zone: 'UTC',
        since: (Time.now - 7 * 24 * 60 * 60).strftime('%Y-%m-%d'),
        until: Time.now.strftime('%Y-%m-%d'),
        include: [],
      }
      query_params = default_params.merge(params)
      @pagerdupi.get('/notifications', query: query_params)
    end
  end
end
