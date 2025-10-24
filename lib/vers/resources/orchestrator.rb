# frozen_string_literal: true

module Vers
  module Resources
    class Orchestrator
      # @return [Vers::Resources::Orchestrator::Vm]
      attr_reader :vm

      # @return [Vers::Resources::Orchestrator::Node]
      attr_reader :node

      # @api private
      #
      # @param client [Vers::Client]
      def initialize(client:)
        @client = client
        @vm = Vers::Resources::Orchestrator::Vm.new(client: client)
        @node = Vers::Resources::Orchestrator::Node.new(client: client)
      end
    end
  end
end
