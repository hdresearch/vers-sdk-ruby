# frozen_string_literal: true

module Vers
  module Models
    class ForkRepositoryRequest < Vers::Internal::Type::BaseModel
      # @!attribute source_org
      #   The organization that owns the source public repository
      #
      #   @return [String]
      required :source_org, String

      # @!attribute source_repo
      #   The source repository name
      #
      #   @return [String]
      required :source_repo, String

      # @!attribute source_tag
      #   The tag to fork (e.g. "latest", "v1.0")
      #
      #   @return [String]
      required :source_tag, String

      # @!attribute repo_name
      #   Name for the new repository in your org (defaults to source_repo if omitted)
      #
      #   @return [String, nil]
      optional :repo_name, String, nil?: true

      # @!attribute tag_name
      #   Tag name in the new repo (defaults to source_tag if omitted)
      #
      #   @return [String, nil]
      optional :tag_name, String, nil?: true

      # @!method initialize(source_org:, source_repo:, source_tag:, repo_name: nil, tag_name: nil)
      #   Request body for POST /api/v1/repositories/fork
      #
      #   @param source_org [String] The organization that owns the source public repository
      #
      #   @param source_repo [String] The source repository name
      #
      #   @param source_tag [String] The tag to fork (e.g. "latest", "v1.0")
      #
      #   @param repo_name [String, nil] Name for the new repository in your org (defaults to source_repo if omitted)
      #
      #   @param tag_name [String, nil] Tag name in the new repo (defaults to source_tag if omitted)
    end
  end
end
