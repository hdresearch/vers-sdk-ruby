# typed: strong

module Vers
  module Models
    class VmCommitParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Vers::VmCommitParams, Vers::Internal::AnyHash) }

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
