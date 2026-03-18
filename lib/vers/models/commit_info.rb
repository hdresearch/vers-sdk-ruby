# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Commits#update
    class CommitInfo < Vers::Internal::Type::BaseModel
      # @!attribute commit_id
      #
      #   @return [String]
      required :commit_id, String

      # @!attribute created_at
      #
      #   @return [String]
      required :created_at, String

      # @!attribute is_public
      #
      #   @return [Boolean]
      required :is_public, Vers::Internal::Type::Boolean

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute owner_id
      #
      #   @return [String]
      required :owner_id, String

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute grandparent_commit_id
      #
      #   @return [String, nil]
      optional :grandparent_commit_id, String, nil?: true

      # @!attribute parent_vm_id
      #
      #   @return [String, nil]
      optional :parent_vm_id, String, nil?: true

      # @!method initialize(commit_id:, created_at:, is_public:, name:, owner_id:, description: nil, grandparent_commit_id: nil, parent_vm_id: nil)
      #   @param commit_id [String]
      #   @param created_at [String]
      #   @param is_public [Boolean]
      #   @param name [String]
      #   @param owner_id [String]
      #   @param description [String, nil]
      #   @param grandparent_commit_id [String, nil]
      #   @param parent_vm_id [String, nil]
    end
  end
end
