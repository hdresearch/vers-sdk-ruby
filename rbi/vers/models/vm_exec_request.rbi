# typed: strong

module Vers
  module Models
    class VmExecRequest < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Vers::VmExecRequest, Vers::Internal::AnyHash) }

      # Command and arguments to execute.
      sig { returns(T::Array[String]) }
      attr_accessor :command

      # Optional environment variables to set for the process.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :env

      # Optional exec identifier for tracking.
      sig { returns(T.nilable(String)) }
      attr_accessor :exec_id

      # Optional stdin payload passed to the command.
      sig { returns(T.nilable(String)) }
      attr_accessor :stdin

      # Timeout in seconds (0 = no timeout).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :timeout_secs

      # Optional working directory for the command.
      sig { returns(T.nilable(String)) }
      attr_accessor :working_dir

      # Request body for POST /api/vm/{vm_id}/exec
      sig do
        params(
          command: T::Array[String],
          env: T.nilable(T::Hash[Symbol, String]),
          exec_id: T.nilable(String),
          stdin: T.nilable(String),
          timeout_secs: T.nilable(Integer),
          working_dir: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Command and arguments to execute.
        command:,
        # Optional environment variables to set for the process.
        env: nil,
        # Optional exec identifier for tracking.
        exec_id: nil,
        # Optional stdin payload passed to the command.
        stdin: nil,
        # Timeout in seconds (0 = no timeout).
        timeout_secs: nil,
        # Optional working directory for the command.
        working_dir: nil
      )
      end

      sig do
        override.returns(
          {
            command: T::Array[String],
            env: T.nilable(T::Hash[Symbol, String]),
            exec_id: T.nilable(String),
            stdin: T.nilable(String),
            timeout_secs: T.nilable(Integer),
            working_dir: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
