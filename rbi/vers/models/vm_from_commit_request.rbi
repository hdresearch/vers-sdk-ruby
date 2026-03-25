# typed: strong

module Vers
  module Models
    # Request body for POST /api/v1/vm/from_commit
    module VmFromCommitRequest
      extend Vers::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Vers::VmFromCommitRequest::CommitID,
            Vers::VmFromCommitRequest::TagName,
            Vers::VmFromCommitRequest::Ref
          )
        end

      class CommitID < Vers::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Vers::VmFromCommitRequest::CommitID, Vers::Internal::AnyHash)
          end

        # The commit ID to restore from
        sig { returns(String) }
        attr_accessor :commit_id

        # The commit ID to restore from
        sig { params(commit_id: String).returns(T.attached_class) }
        def self.new(
          # The commit ID to restore from
          commit_id:
        )
        end

        sig { override.returns({ commit_id: String }) }
        def to_hash
        end
      end

      class TagName < Vers::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Vers::VmFromCommitRequest::TagName, Vers::Internal::AnyHash)
          end

        # The tag name to restore from (legacy org-scoped tag)
        sig { returns(String) }
        attr_accessor :tag_name

        # The tag name to restore from (legacy org-scoped tag)
        sig { params(tag_name: String).returns(T.attached_class) }
        def self.new(
          # The tag name to restore from (legacy org-scoped tag)
          tag_name:
        )
        end

        sig { override.returns({ tag_name: String }) }
        def to_hash
        end
      end

      class Ref < Vers::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Vers::VmFromCommitRequest::Ref, Vers::Internal::AnyHash)
          end

        # A repository reference in "repo_name:tag_name" format
        sig { returns(String) }
        attr_accessor :ref

        # A repository reference in "repo_name:tag_name" format
        sig { params(ref: String).returns(T.attached_class) }
        def self.new(
          # A repository reference in "repo_name:tag_name" format
          ref:
        )
        end

        sig { override.returns({ ref: String }) }
        def to_hash
        end
      end

      sig { override.returns(T::Array[Vers::VmFromCommitRequest::Variants]) }
      def self.variants
      end
    end
  end
end
