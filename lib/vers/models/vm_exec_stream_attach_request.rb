# frozen_string_literal: true

module Vers
  module Models
    class VmExecStreamAttachRequest < Vers::Internal::Type::BaseModel
      # @!attribute exec_id
      #   Identifier of the exec stream session to reattach to.
      #
      #   @return [String]
      required :exec_id, String

      # @!attribute cursor
      #   Optional cursor to resume from (exclusive). If omitted, the full retained
      #   backlog is replayed.
      #
      #   @return [Integer, nil]
      optional :cursor, Integer, nil?: true

      # @!attribute from_latest
      #   Start streaming after the latest retained chunk (ignores cursor).
      #
      #   @return [Boolean, nil]
      optional :from_latest, Vers::Internal::Type::Boolean, nil?: true

      # @!method initialize(exec_id:, cursor: nil, from_latest: nil)
      #   Some parameter documentations has been truncated, see
      #   {Vers::Models::VmExecStreamAttachRequest} for more details.
      #
      #   Request body for POST /api/vm/{vm_id}/exec/stream/attach
      #
      #   @param exec_id [String] Identifier of the exec stream session to reattach to.
      #
      #   @param cursor [Integer, nil] Optional cursor to resume from (exclusive). If omitted, the full retained backlo
      #
      #   @param from_latest [Boolean, nil] Start streaming after the latest retained chunk (ignores cursor).
    end
  end
end
