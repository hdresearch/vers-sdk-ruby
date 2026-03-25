# typed: strong

module Vers
  module Resources
    class CommitTags
      sig do
        params(
          commit_id: String,
          tag_name: String,
          description: T.nilable(String),
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::CreateTagResponse)
      end
      def create(
        # The commit ID this tag should point to
        commit_id:,
        # The name of the tag (alphanumeric, hyphens, underscores, dots, 1-64 chars)
        tag_name:,
        # Optional description of what this tag represents
        description: nil,
        request_options: {}
      )
      end

      sig do
        params(
          tag_name: String,
          commit_id: T.nilable(String),
          description: T.nilable(String),
          request_options: Vers::RequestOptions::OrHash
        ).void
      end
      def update(
        # Tag name
        tag_name,
        # Optional new commit ID to move the tag to
        commit_id: nil,
        # Optional new description for the tag. Send `null` to clear an existing
        # description.
        description: nil,
        request_options: {}
      )
      end

      sig do
        params(request_options: Vers::RequestOptions::OrHash).returns(
          Vers::ListTagsResponse
        )
      end
      def list(request_options: {})
      end

      sig do
        params(
          tag_name: String,
          request_options: Vers::RequestOptions::OrHash
        ).void
      end
      def delete(
        # Tag name
        tag_name,
        request_options: {}
      )
      end

      sig do
        params(
          tag_name: String,
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::TagInfo)
      end
      def get(
        # Tag name
        tag_name,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Vers::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
