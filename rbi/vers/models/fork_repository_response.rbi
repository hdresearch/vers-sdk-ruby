# typed: strong

module Vers
  module Models
    class ForkRepositoryResponse < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Vers::ForkRepositoryResponse, Vers::Internal::AnyHash)
        end

      # The new commit in your org (snapshot of the forked VM)
      sig { returns(String) }
      attr_accessor :commit_id

      # Full reference: repo_name:tag_name
      sig { returns(String) }
      attr_accessor :reference

      # The new repository name in your org
      sig { returns(String) }
      attr_accessor :repo_name

      # The tag name pointing to the forked commit
      sig { returns(String) }
      attr_accessor :tag_name

      # The new VM that was created from the fork
      sig { returns(String) }
      attr_accessor :vm_id

      # Response body for POST /api/v1/repositories/fork
      sig do
        params(
          commit_id: String,
          reference: String,
          repo_name: String,
          tag_name: String,
          vm_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The new commit in your org (snapshot of the forked VM)
        commit_id:,
        # Full reference: repo_name:tag_name
        reference:,
        # The new repository name in your org
        repo_name:,
        # The tag name pointing to the forked commit
        tag_name:,
        # The new VM that was created from the fork
        vm_id:
      )
      end

      sig do
        override.returns(
          {
            commit_id: String,
            reference: String,
            repo_name: String,
            tag_name: String,
            vm_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
