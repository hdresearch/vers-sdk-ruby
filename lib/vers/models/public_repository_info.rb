# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::PublicRepositories#get
    class PublicRepositoryInfo < Vers::Internal::Type::BaseModel
      # @!attribute created_at
      #   When the repository was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute full_name
      #   Full reference: org_name/repo_name
      #
      #   @return [String]
      required :full_name, String

      # @!attribute name
      #   The repository name
      #
      #   @return [String]
      required :name, String

      # @!attribute org_name
      #   The owning organization's name (namespace)
      #
      #   @return [String]
      required :org_name, String

      # @!attribute repo_id
      #   The repository's unique identifier
      #
      #   @return [String]
      required :repo_id, String

      # @!attribute description
      #   Optional description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!method initialize(created_at:, full_name:, name:, org_name:, repo_id:, description: nil)
      #   Public repository information (includes owner org name for namespacing)
      #
      #   @param created_at [Time] When the repository was created
      #
      #   @param full_name [String] Full reference: org_name/repo_name
      #
      #   @param name [String] The repository name
      #
      #   @param org_name [String] The owning organization's name (namespace)
      #
      #   @param repo_id [String] The repository's unique identifier
      #
      #   @param description [String, nil] Optional description
    end
  end
end
