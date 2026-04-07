# typed: strong

module Vers
  module Resources
    class Commits
      sig do
        params(
          commit_id: String,
          is_public: T::Boolean,
          description: T.nilable(String),
          name: T.nilable(String),
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::CommitInfo)
      end
      def update(
        # The commit ID
        commit_id,
        is_public:,
        # Optional description for the commit.
        description: nil,
        # Optional human-readable name for the commit.
        name: nil,
        request_options: {}
      )
      end

      sig do
        params(request_options: Vers::RequestOptions::OrHash).returns(
          Vers::ListCommitsResponse
        )
      end
      def list(request_options: {})
      end

      sig do
        params(
          commit_id: String,
          request_options: Vers::RequestOptions::OrHash
        ).void
      end
      def delete(
        # Commit ID to delete
        commit_id,
        request_options: {}
      )
      end

      sig do
        params(
          commit_id: String,
          request_options: Vers::RequestOptions::OrHash
        ).returns(T::Array[Vers::Models::CommitListParentsResponseItem])
      end
      def list_parents(
        # Commit ID to start from
        commit_id,
        request_options: {}
      )
      end

      sig do
        params(request_options: Vers::RequestOptions::OrHash).returns(
          Vers::ListCommitsResponse
        )
      end
      def list_public(request_options: {})
      end

      # @api private
      sig { params(client: Vers::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
