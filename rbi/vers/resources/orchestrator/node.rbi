# typed: strong

module Vers
  module Resources
    class Orchestrator
      class Node
        sig do
          params(
            node_id: String,
            request_options: Vers::RequestOptions::OrHash
          ).returns(Vers::Orchestrator::VmListAllResponse)
        end
        def list_vms(
          # Node ID
          node_id,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Vers::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
