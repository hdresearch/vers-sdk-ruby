# typed: strong

module Vers
  module Resources
    class API
      class Telemetry
        # Get telemetry information
        sig do
          params(request_options: Vers::RequestOptions::OrHash).returns(
            Vers::API::TelemetryDto
          )
        end
        def get_info(request_options: {})
        end

        # @api private
        sig { params(client: Vers::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
