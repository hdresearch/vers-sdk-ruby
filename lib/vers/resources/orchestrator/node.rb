# frozen_string_literal: true

module Vers
  module Resources
    class Orchestrator
      class Node
        # @overload list_vms(node_id, request_options: {})
        #
        # @param node_id [String] Node ID
        #
        # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Vers::Models::Orchestrator::VmListAllResponse]
        #
        # @see Vers::Models::Orchestrator::NodeListVmsParams
        def list_vms(node_id, params = {})
          @client.request(
            method: :get,
            path: ["node/%1$s/vms", node_id],
            model: Vers::Orchestrator::VmListAllResponse,
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
