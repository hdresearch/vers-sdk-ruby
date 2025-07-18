# frozen_string_literal: true

module FirecrackerManager
  module Resources
    class API
      class Telemetry
        # Get telemetry information
        #
        # @overload get_info(request_options: {})
        #
        # @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FirecrackerManager::Models::API::TelemetryDto]
        #
        # @see FirecrackerManager::Models::API::TelemetryGetInfoParams
        def get_info(params = {})
          @client.request(
            method: :get,
            path: "api/telemetry",
            model: FirecrackerManager::API::TelemetryDto,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [FirecrackerManager::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
