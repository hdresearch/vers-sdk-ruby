# typed: strong

module Vers
  module Models
    class UpdateTagRequest < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Vers::UpdateTagRequest, Vers::Internal::AnyHash) }

      # Optional new commit ID to move the tag to
      sig { returns(T.nilable(String)) }
      attr_accessor :commit_id

      # Optional new description for the tag. Send `null` to clear an existing
      # description.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Request body for PATCH /api/v1/commit_tags/{tag_name}
      #
      # For `description`:
      #
      # - Field absent from JSON → don't change the description
      # - Field present as `null` → clear the description
      # - Field present as `"text"` → set the description to "text"
      sig do
        params(
          commit_id: T.nilable(String),
          description: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Optional new commit ID to move the tag to
        commit_id: nil,
        # Optional new description for the tag. Send `null` to clear an existing
        # description.
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
