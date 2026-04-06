# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Repositories#fork_
    class RepositoryForkParams < Vers::Models::ForkRepositoryRequest
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
