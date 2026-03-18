# typed: strong

module Vers
  module Models
    class ListCommitsResponse < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Vers::ListCommitsResponse, Vers::Internal::AnyHash)
        end

      sig { returns(T::Array[Vers::CommitInfo]) }
      attr_accessor :commits

      sig { returns(Integer) }
      attr_accessor :limit

      sig { returns(Integer) }
      attr_accessor :offset

      sig { returns(Integer) }
      attr_accessor :total

      sig do
        params(
          commits: T::Array[Vers::CommitInfo::OrHash],
          limit: Integer,
          offset: Integer,
          total: Integer
        ).returns(T.attached_class)
      end
      def self.new(commits:, limit:, offset:, total:)
      end

      sig do
        override.returns(
          {
            commits: T::Array[Vers::CommitInfo],
            limit: Integer,
            offset: Integer,
            total: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
