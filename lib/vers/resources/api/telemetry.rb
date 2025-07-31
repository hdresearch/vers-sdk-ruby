# frozen_string_literal: true

module Vers
  module Resources
    class API
      class Telemetry
        # Get telemetry information
        #
        # @overload get_info(request_options: {})
        #
        # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Vers::Models::API::TelemetryDto]
        #
        # @see Vers::Models::API::TelemetryGetInfoParams
        def get_info(params = {})
          @client.request(
            method: :get,
            path: "api/telemetry",
            model: Vers::API::TelemetryDto,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Vers::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
