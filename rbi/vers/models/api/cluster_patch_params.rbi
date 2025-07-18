# typed: strong

module Vers
  module Models
    module API
      class ClusterPatchParams < Vers::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Vers::API::ClusterPatchParams, Vers::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :alias_

        sig { params(alias_: T.nilable(String)).returns(T.attached_class) }
        def self.new(alias_: nil)
        end

        sig { override.returns({ alias_: T.nilable(String) }) }
        def to_hash
        end
      end
    end
  end
end
