# typed: strong

module Vers
  module Models
    module Orchestrator
      class VmCommitResponse < Vers::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Vers::Orchestrator::VmCommitResponse, Vers::Internal::AnyHash)
          end

        # The commit ID, a (v4) UUID
        sig { returns(String) }
        attr_accessor :commit_id

        # The host architecture, eg: "x86_64" (currently implemented with `uname -m``)
        sig { returns(String) }
        attr_accessor :host_architecture

        # The response body for POST /api/vm/{vm_id}/commit
        sig do
          params(commit_id: String, host_architecture: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The commit ID, a (v4) UUID
          commit_id:,
          # The host architecture, eg: "x86_64" (currently implemented with `uname -m``)
          host_architecture:
        )
        end

        sig do
          override.returns({ commit_id: String, host_architecture: String })
        end
        def to_hash
        end
      end
    end
  end
end
