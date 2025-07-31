# typed: strong

module Vers
  module Models
    module API
      class VmDeleteParams < Vers::Internal::Type::BaseModel
        extend Vers::Internal::Type::RequestParameters::Converter
        include Vers::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Vers::API::VmDeleteParams, Vers::Internal::AnyHash)
          end

        # Delete children recursively
        sig { returns(T::Boolean) }
        attr_accessor :recursive

        sig do
          params(
            recursive: T::Boolean,
            request_options: Vers::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Delete children recursively
          recursive:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { recursive: T::Boolean, request_options: Vers::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
