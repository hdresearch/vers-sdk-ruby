# frozen_string_literal: true

module Vers
  module Models
    class ErrorResponse < Vers::Internal::Type::BaseModel
      # @!attribute error
      #   Reason of error
      #
      #   @return [String, nil]
      optional :error, String

      # @!attribute success
      #   Is always: false
      #
      #   @return [Boolean, nil]
      optional :success, Vers::Internal::Type::Boolean

      # @!method initialize(error: nil, success: nil)
      #   @param error [String] Reason of error
      #
      #   @param success [Boolean] Is always: false
    end
  end
end
