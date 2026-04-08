# frozen_string_literal: true

module Vers
  module Models
    class VmExecRequest < Vers::Internal::Type::BaseModel
      # @!attribute command
      #   Command and arguments to execute.
      #
      #   @return [Array<String>]
      required :command, Vers::Internal::Type::ArrayOf[String]

      # @!attribute env
      #   Optional environment variables to set for the process.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :env, Vers::Internal::Type::HashOf[String], nil?: true

      # @!attribute exec_id
      #   Optional exec identifier for tracking.
      #
      #   @return [String, nil]
      optional :exec_id, String, nil?: true

      # @!attribute stdin
      #   Optional stdin payload passed to the command.
      #
      #   @return [String, nil]
      optional :stdin, String, nil?: true

      # @!attribute timeout_secs
      #   Timeout in seconds (0 = no timeout).
      #
      #   @return [Integer, nil]
      optional :timeout_secs, Integer, nil?: true

      # @!attribute working_dir
      #   Optional working directory for the command.
      #
      #   @return [String, nil]
      optional :working_dir, String, nil?: true

      # @!method initialize(command:, env: nil, exec_id: nil, stdin: nil, timeout_secs: nil, working_dir: nil)
      #   Request body for POST /api/vm/{vm_id}/exec
      #
      #   @param command [Array<String>] Command and arguments to execute.
      #
      #   @param env [Hash{Symbol=>String}, nil] Optional environment variables to set for the process.
      #
      #   @param exec_id [String, nil] Optional exec identifier for tracking.
      #
      #   @param stdin [String, nil] Optional stdin payload passed to the command.
      #
      #   @param timeout_secs [Integer, nil] Timeout in seconds (0 = no timeout).
      #
      #   @param working_dir [String, nil] Optional working directory for the command.
    end
  end
end
