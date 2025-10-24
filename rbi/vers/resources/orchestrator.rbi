# typed: strong

module Vers
  module Resources
    class Orchestrator
      sig { returns(Vers::Resources::Orchestrator::Vm) }
      attr_reader :vm

      sig { returns(Vers::Resources::Orchestrator::Node) }
      attr_reader :node

      # @api private
      sig { params(client: Vers::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
