# frozen_string_literal: true

module Vers
  module Models
    module Orchestrator
      # @see Vers::Resources::Orchestrator::Vm#commit
      class VmCommitResponse < Vers::Internal::Type::BaseModel
        # @!attribute commit_id
        #   The commit ID, a (v4) UUID
        #
        #   @return [String]
        required :commit_id, String

        # @!attribute host_architecture
        #   The host architecture, eg: "x86_64" (currently implemented with `uname -m``)
        #
        #   @return [String]
        required :host_architecture, String

        # @!method initialize(commit_id:, host_architecture:)
        #   The response body for POST /api/vm/{vm_id}/commit
        #
        #   @param commit_id [String] The commit ID, a (v4) UUID
        #
        #   @param host_architecture [String] The host architecture, eg: "x86_64" (currently implemented with `uname -m``)
      end
    end
  end
end
