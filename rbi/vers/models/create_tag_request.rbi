# typed: strong

module Vers
  module Models
    class CreateTagRequest < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Vers::CreateTagRequest, Vers::Internal::AnyHash) }

      # The commit ID this tag should point to
      sig { returns(String) }
      attr_accessor :commit_id

      # The name of the tag (alphanumeric, hyphens, underscores, dots, 1-64 chars)
      sig { returns(String) }
      attr_accessor :tag_name

      # Optional description of what this tag represents
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Request body for POST /api/v1/commit_tags
      sig do
        params(
          commit_id: String,
          tag_name: String,
          description: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The commit ID this tag should point to
        commit_id:,
        # The name of the tag (alphanumeric, hyphens, underscores, dots, 1-64 chars)
        tag_name:,
        # Optional description of what this tag represents
        description: nil
      )
      end

      sig do
        override.returns(
          {
            commit_id: String,
            tag_name: String,
            description: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
