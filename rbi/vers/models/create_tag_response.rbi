# typed: strong

module Vers
  module Models
    class CreateTagResponse < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Vers::CreateTagResponse, Vers::Internal::AnyHash) }

      # The commit ID this tag points to
      sig { returns(String) }
      attr_accessor :commit_id

      # The ID of the newly created tag
      sig { returns(String) }
      attr_accessor :tag_id

      # The name of the tag
      sig { returns(String) }
      attr_accessor :tag_name

      # Response body for POST /api/v1/commit_tags
      sig do
        params(commit_id: String, tag_id: String, tag_name: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # The commit ID this tag points to
        commit_id:,
        # The ID of the newly created tag
        tag_id:,
        # The name of the tag
        tag_name:
      )
      end

      sig do
        override.returns(
          { commit_id: String, tag_id: String, tag_name: String }
        )
      end
      def to_hash
      end
    end
  end
end
