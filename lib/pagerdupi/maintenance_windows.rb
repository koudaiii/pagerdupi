module Pagerdupi
  class MaintenanceWindow
    def initialize(api_key)
      @pagerdupi = Pagerdupi::Client.new(api_key)
    end

    def get_maintenance_windows(params = {})
      default_params = {
       team_ids: [],
       service_ids: [],
       include: [],
       filter: nil,
       query: nil,
      }
      query_params = default_params.merge(params)

      @pagerdupi.get('/maintenance_windows', quary: query_params)
    end
  end
end
