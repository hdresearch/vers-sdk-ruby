# typed: strong

module Vers
  module Models
    class VmRestoreFromCommitParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Vers::VmRestoreFromCommitParams, Vers::Internal::AnyHash)
        end

      # Request body for POST /api/v1/vm/from_commit
      sig do
        returns(
          T.any(
            Vers::VmFromCommitRequest::CommitID,
            Vers::VmFromCommitRequest::TagName
          )
        )
      end
      attr_accessor :vm_from_commit_request

      sig do
        params(
          vm_from_commit_request:
            T.any(
              Vers::VmFromCommitRequest::CommitID::OrHash,
              Vers::VmFromCommitRequest::TagName::OrHash
            ),
          request_options: Vers::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Request body for POST /api/v1/vm/from_commit
        vm_from_commit_request:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            vm_from_commit_request:
              T.any(
                Vers::VmFromCommitRequest::CommitID,
                Vers::VmFromCommitRequest::TagName
              ),
            request_options: Vers::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
