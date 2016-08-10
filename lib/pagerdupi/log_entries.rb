module Pagerdupi
  class LogEntry

    def initialize(api_key)
      @pagerdupi = Pagerdupi::Client.new(api_key)
    end

    def get_logenties(params = {})
      default_params = {
       time_zone: 'UTC',
       since: '',
       until: '',
       is_overview: false,
       include: [],
      }
      query_params = default_params.merge(params)

      @pagerdupi.get('/log_entries', quary: query_params)
    end
  end
end
