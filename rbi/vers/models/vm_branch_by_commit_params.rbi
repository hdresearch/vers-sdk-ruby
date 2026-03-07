# typed: strong

module Vers
  module Models
    class VmBranchByCommitParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Vers::VmBranchByCommitParams, Vers::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :commit_id

      # Number of VMs to branch (optional; default 1)
      sig { returns(T.nilable(Integer)) }
      attr_reader :count

      sig { params(count: Integer).void }
      attr_writer :count

      sig do
        params(
          commit_id: String,
          count: Integer,
          request_options: Vers::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        commit_id:,
        # Number of VMs to branch (optional; default 1)
        count: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            commit_id: String,
            count: Integer,
            request_options: Vers::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
