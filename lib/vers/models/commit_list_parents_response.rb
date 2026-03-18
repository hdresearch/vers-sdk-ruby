# frozen_string_literal: true

module Vers
  module Models
    class CommitListParentsResponseItem < Vers::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute is_public
      #   Whether this commit is publicly accessible (readable/restorable by anyone).
      #
      #   @return [Boolean]
      required :is_public, Vers::Internal::Type::Boolean

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute owner_id
      #   api key id.
      #
      #   @return [String]
      required :owner_id, String

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute grandparent_commit_id
      #   The commit that this commit's parent VM was started from, if any. Intended to
      #   optimize traversing the commit tree.
      #
      #   @return [String, nil]
      optional :grandparent_commit_id, String, nil?: true

      # @!attribute parent_vm_id
      #   The VM that this commit was created from, if any.
      #
      #   @return [String, nil]
      optional :parent_vm_id, String, nil?: true

      # @!method initialize(id:, created_at:, is_public:, name:, owner_id:, description: nil, grandparent_commit_id: nil, parent_vm_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Vers::Models::CommitListParentsResponseItem} for more details.
      #
      #   @param id [String]
      #
      #   @param created_at [Time]
      #
      #   @param is_public [Boolean] Whether this commit is publicly accessible (readable/restorable by anyone).
      #
      #   @param name [String]
      #
      #   @param owner_id [String] api key id.
      #
      #   @param description [String, nil]
      #
      #   @param grandparent_commit_id [String, nil] The commit that this commit's parent VM was started from, if any. Intended to op
      #
      #   @param parent_vm_id [String, nil] The VM that this commit was created from, if any.
    end

    # @type [Vers::Internal::Type::Converter]
    CommitListParentsResponse =
      Vers::Internal::Type::ArrayOf[-> { Vers::Models::CommitListParentsResponseItem }]
  end
end
