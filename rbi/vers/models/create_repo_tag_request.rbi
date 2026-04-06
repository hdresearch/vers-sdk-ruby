# typed: strong

module Vers
  module Models
    class CreateRepoTagRequest < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Vers::CreateRepoTagRequest, Vers::Internal::AnyHash)
        end

      # The commit ID this tag should point to
      sig { returns(String) }
      attr_accessor :commit_id

      # The tag name (e.g. "latest", "v1.0")
      sig { returns(String) }
      attr_accessor :tag_name

      # Optional description of what this tag represents
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Request body for creating a tag within a repository: POST
      # /api/v1/repositories/{repo_name}/tags
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
        # The tag name (e.g. "latest", "v1.0")
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
