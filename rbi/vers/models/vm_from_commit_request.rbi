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
            Vers::VmFromCommitRequest::TagName
          )
        end

      class CommitID < Vers::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Vers::VmFromCommitRequest::CommitID, Vers::Internal::AnyHash)
          end

        # The commit ID to restore from (exactly one of commit_id or tag_name must be
        # provided)
        sig { returns(String) }
        attr_accessor :commit_id

        # The commit ID to restore from (exactly one of commit_id or tag_name must be
        # provided)
        sig { params(commit_id: String).returns(T.attached_class) }
        def self.new(
          # The commit ID to restore from (exactly one of commit_id or tag_name must be
          # provided)
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

        # The tag name to restore from (exactly one of commit_id or tag_name must be
        # provided)
        sig { returns(String) }
        attr_accessor :tag_name

        # The tag name to restore from (exactly one of commit_id or tag_name must be
        # provided)
        sig { params(tag_name: String).returns(T.attached_class) }
        def self.new(
          # The tag name to restore from (exactly one of commit_id or tag_name must be
          # provided)
          tag_name:
        )
        end

        sig { override.returns({ tag_name: String }) }
        def to_hash
        end
      end

      sig { override.returns(T::Array[Vers::VmFromCommitRequest::Variants]) }
      def self.variants
      end
    end
  end
end
