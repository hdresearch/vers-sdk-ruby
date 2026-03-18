# typed: strong

module Vers
  module Models
    class TagInfo < Vers::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Vers::TagInfo, Vers::Internal::AnyHash) }

      # The commit ID this tag currently points to
      sig { returns(String) }
      attr_accessor :commit_id

      # When the tag was created
      sig { returns(Time) }
      attr_accessor :created_at

      # The tag's unique identifier
      sig { returns(String) }
      attr_accessor :tag_id

      # The name of the tag
      sig { returns(String) }
      attr_accessor :tag_name

      # When the tag was last updated (moved to different commit or description changed)
      sig { returns(Time) }
      attr_accessor :updated_at

      # Optional description of what this tag represents
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Tag information returned in list and get operations
      sig do
        params(
          commit_id: String,
          created_at: Time,
          tag_id: String,
          tag_name: String,
          updated_at: Time,
          description: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The commit ID this tag currently points to
        commit_id:,
        # When the tag was created
        created_at:,
        # The tag's unique identifier
        tag_id:,
        # The name of the tag
        tag_name:,
        # When the tag was last updated (moved to different commit or description changed)
        updated_at:,
        # Optional description of what this tag represents
        description: nil
      )
      end

      sig do
        override.returns(
          {
            commit_id: String,
            created_at: Time,
            tag_id: String,
            tag_name: String,
            updated_at: Time,
            description: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
