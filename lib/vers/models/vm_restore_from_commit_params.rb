# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#restore_from_commit
    class VmRestoreFromCommitParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      # @!attribute vm_from_commit_request
      #   Request body for POST /api/v1/vm/from_commit
      #
      #   @return [Vers::Models::VmFromCommitRequest::CommitID, Vers::Models::VmFromCommitRequest::TagName]
      required :vm_from_commit_request, union: -> { Vers::VmFromCommitRequest }

      # @!method initialize(vm_from_commit_request:, request_options: {})
      #   @param vm_from_commit_request [Vers::Models::VmFromCommitRequest::CommitID, Vers::Models::VmFromCommitRequest::TagName] Request body for POST /api/v1/vm/from_commit
      #
      #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
