# typed: strong

module Vers
  module Models
    class CreateRepoTagResponse < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Vers::CreateRepoTagResponse, Vers::Internal::AnyHash)
        end

      # The commit ID this tag points to
      sig { returns(String) }
      attr_accessor :commit_id

      # Full reference in image_name:tag format
      sig { returns(String) }
      attr_accessor :reference

      # The ID of the newly created tag
      sig { returns(String) }
      attr_accessor :tag_id

      # Response body for POST /api/v1/repositories/{repo_name}/tags
      sig do
        params(commit_id: String, reference: String, tag_id: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # The commit ID this tag points to
        commit_id:,
        # Full reference in image_name:tag format
        reference:,
        # The ID of the newly created tag
        tag_id:
      )
      end

      sig do
        override.returns(
          { commit_id: String, reference: String, tag_id: String }
        )
      end
      def to_hash
      end
    end
  end
end
