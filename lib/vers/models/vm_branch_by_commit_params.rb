# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#branch_by_commit
    class VmBranchByCommitParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      # @!attribute commit_id
      #
      #   @return [String]
      required :commit_id, String

      # @!attribute count
      #   Number of VMs to branch (optional; default 1)
      #
      #   @return [Integer, nil]
      optional :count, Integer

      # @!method initialize(commit_id:, count: nil, request_options: {})
      #   @param commit_id [String]
      #
      #   @param count [Integer] Number of VMs to branch (optional; default 1)
      #
      #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
