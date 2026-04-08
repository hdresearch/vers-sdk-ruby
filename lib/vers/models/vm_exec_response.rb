# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#exec_
    class VmExecResponse < Vers::Internal::Type::BaseModel
      # @!attribute exit_code
      #   Exit code returned by the command.
      #
      #   @return [Integer]
      required :exit_code, Integer

      # @!attribute stderr
      #   UTF-8 decoded stderr (lossy).
      #
      #   @return [String]
      required :stderr, String

      # @!attribute stdout
      #   UTF-8 decoded stdout (lossy).
      #
      #   @return [String]
      required :stdout, String

      # @!attribute exec_id
      #   Exec identifier associated with this run.
      #
      #   @return [String, nil]
      optional :exec_id, String, nil?: true

      # @!method initialize(exit_code:, stderr:, stdout:, exec_id: nil)
      #   Response body for POST /api/vm/{vm_id}/exec
      #
      #   @param exit_code [Integer] Exit code returned by the command.
      #
      #   @param stderr [String] UTF-8 decoded stderr (lossy).
      #
      #   @param stdout [String] UTF-8 decoded stdout (lossy).
      #
      #   @param exec_id [String, nil] Exec identifier associated with this run.
    end
  end
end
