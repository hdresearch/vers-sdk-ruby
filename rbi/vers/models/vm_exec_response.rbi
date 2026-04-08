# typed: strong

module Vers
  module Models
    class VmExecResponse < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Vers::VmExecResponse, Vers::Internal::AnyHash) }

      # Exit code returned by the command.
      sig { returns(Integer) }
      attr_accessor :exit_code

      # UTF-8 decoded stderr (lossy).
      sig { returns(String) }
      attr_accessor :stderr

      # UTF-8 decoded stdout (lossy).
      sig { returns(String) }
      attr_accessor :stdout

      # Exec identifier associated with this run.
      sig { returns(T.nilable(String)) }
      attr_accessor :exec_id

      # Response body for POST /api/vm/{vm_id}/exec
      sig do
        params(
          exit_code: Integer,
          stderr: String,
          stdout: String,
          exec_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Exit code returned by the command.
        exit_code:,
        # UTF-8 decoded stderr (lossy).
        stderr:,
        # UTF-8 decoded stdout (lossy).
        stdout:,
        # Exec identifier associated with this run.
        exec_id: nil
      )
      end

      sig do
        override.returns(
          {
            exit_code: Integer,
            stderr: String,
            stdout: String,
            exec_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
