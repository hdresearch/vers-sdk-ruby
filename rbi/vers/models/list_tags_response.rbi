# typed: strong

module Vers
  module Models
    class ListTagsResponse < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Vers::ListTagsResponse, Vers::Internal::AnyHash) }

      # List of all tags in the user's organization
      sig { returns(T::Array[Vers::TagInfo]) }
      attr_accessor :tags

      # Response body for GET /api/v1/commit_tags
      sig do
        params(tags: T::Array[Vers::TagInfo::OrHash]).returns(T.attached_class)
      end
      def self.new(
        # List of all tags in the user's organization
        tags:
      )
      end

      sig { override.returns({ tags: T::Array[Vers::TagInfo] }) }
      def to_hash
      end
    end
  end
end
