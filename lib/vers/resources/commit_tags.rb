# frozen_string_literal: true

module Vers
  module Resources
    class CommitTags
      # @overload create(commit_id:, tag_name:, description: nil, request_options: {})
      #
      # @param commit_id [String] The commit ID this tag should point to
      #
      # @param tag_name [String] The name of the tag (alphanumeric, hyphens, underscores, dots, 1-64 chars)
      #
      # @param description [String, nil] Optional description of what this tag represents
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::CreateTagResponse]
      #
      # @see Vers::Models::CommitTagCreateParams
      def create(params)
        parsed, options = Vers::CommitTagCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v1/commit_tags",
          body: parsed,
          model: Vers::CreateTagResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Vers::Models::CommitTagUpdateParams} for more details.
      #
      # @overload update(tag_name, commit_id: nil, description: nil, request_options: {})
      #
      # @param tag_name [String] Tag name
      #
      # @param commit_id [String, nil] Optional new commit ID to move the tag to
      #
      # @param description [String, nil] Optional new description for the tag. Send `null` to clear an existing descripti
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Vers::Models::CommitTagUpdateParams
      def update(tag_name, params = {})
        parsed, options = Vers::CommitTagUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v1/commit_tags/%1$s", tag_name],
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # @overload list(request_options: {})
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::ListTagsResponse]
      #
      # @see Vers::Models::CommitTagListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "api/v1/commit_tags",
          model: Vers::ListTagsResponse,
          options: params[:request_options]
        )
      end

      # @overload delete(tag_name, request_options: {})
      #
      # @param tag_name [String] Tag name
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Vers::Models::CommitTagDeleteParams
      def delete(tag_name, params = {})
        @client.request(
          method: :delete,
          path: ["api/v1/commit_tags/%1$s", tag_name],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @overload get(tag_name, request_options: {})
      #
      # @param tag_name [String] Tag name
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::TagInfo]
      #
      # @see Vers::Models::CommitTagGetParams
      def get(tag_name, params = {})
        @client.request(
          method: :get,
          path: ["api/v1/commit_tags/%1$s", tag_name],
          model: Vers::TagInfo,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Vers::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
