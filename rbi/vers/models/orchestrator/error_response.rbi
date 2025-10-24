# typed: strong

module Vers
  module Models
    module Orchestrator
      class ErrorResponse < Vers::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Vers::Orchestrator::ErrorResponse, Vers::Internal::AnyHash)
          end

        # Reason of error
        sig { returns(T.nilable(String)) }
        attr_reader :error

        sig { params(error: String).void }
        attr_writer :error

        # Is always: false
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :success

        sig { params(success: T::Boolean).void }
        attr_writer :success

        sig do
          params(error: String, success: T::Boolean).returns(T.attached_class)
        end
        def self.new(
          # Reason of error
          error: nil,
          # Is always: false
          success: nil
        )
        end

        sig { override.returns({ error: String, success: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
