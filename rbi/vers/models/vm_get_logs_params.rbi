# typed: strong

module Vers
  module Models
    class VmGetLogsParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Vers::VmGetLogsParams, Vers::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :vm_id

      # Maximum number of log entries to return
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_entries

      sig { params(max_entries: Integer).void }
      attr_writer :max_entries

      # Byte offset into the log file (default: 0)
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      # Filter by 'stdout' or 'stderr'
      sig { returns(T.nilable(String)) }
      attr_reader :stream

      sig { params(stream: String).void }
      attr_writer :stream

      sig do
        params(
          vm_id: String,
          max_entries: Integer,
          offset: Integer,
          stream: String,
          request_options: Vers::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        vm_id:,
        # Maximum number of log entries to return
        max_entries: nil,
        # Byte offset into the log file (default: 0)
        offset: nil,
        # Filter by 'stdout' or 'stderr'
        stream: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            vm_id: String,
            max_entries: Integer,
            offset: Integer,
            stream: String,
            request_options: Vers::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
