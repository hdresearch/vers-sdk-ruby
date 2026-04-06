# typed: strong

module Vers
  module Models
    class UpdateRepoTagRequest < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Vers::UpdateRepoTagRequest, Vers::Internal::AnyHash)
        end

      # Optional new commit ID to move the tag to
      sig { returns(T.nilable(String)) }
      attr_accessor :commit_id

      # Optional new description for the tag. Send `null` to clear.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Request body for PATCH /api/v1/repositories/{repo_name}/tags/{tag_name}
      sig do
        params(
          commit_id: T.nilable(String),
          description: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Optional new commit ID to move the tag to
        commit_id: nil,
        # Optional new description for the tag. Send `null` to clear.
        description: nil
      )
      end

      sig do
        override.returns(
          { commit_id: T.nilable(String), description: T.nilable(String) }
        )
      end
      def to_hash
      end
    end
  end
end
