# typed: strong

module Vers
  module Models
    module Orchestrator
      class NewVmResponse < Vers::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Vers::Orchestrator::NewVmResponse, Vers::Internal::AnyHash)
          end

        # The VM ID, a (v4) UUID
        sig { returns(String) }
        attr_accessor :id

        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The VM ID, a (v4) UUID
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end
