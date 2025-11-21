# typed: strong

module Vers
  module Models
    class VmCreateRootParams < Vers::Models::NewRootRequest
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Vers::VmCreateRootParams, Vers::Internal::AnyHash)
        end

      sig do
        params(request_options: Vers::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: Vers::RequestOptions }) }
      def to_hash
      end
    end
  end
end
