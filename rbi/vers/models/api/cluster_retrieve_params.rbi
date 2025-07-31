# typed: strong

module Vers
  module Models
    module API
      class ClusterRetrieveParams < Vers::Internal::Type::BaseModel
        extend Vers::Internal::Type::RequestParameters::Converter
        include Vers::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Vers::API::ClusterRetrieveParams, Vers::Internal::AnyHash)
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
end
