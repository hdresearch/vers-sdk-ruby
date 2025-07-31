# typed: strong

module Vers
  module Resources
    class API
      class Health
        # Get health of the API.
        sig do
          params(request_options: Vers::RequestOptions::OrHash).returns(String)
        end
        def check(request_options: {})
        end

        # @api private
        sig { params(client: Vers::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
