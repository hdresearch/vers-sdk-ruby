# typed: strong

module Vers
  module Models
    class VmExecLogResponse < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Vers::VmExecLogResponse, Vers::Internal::AnyHash) }

      # Returned log entries.
      sig { returns(T::Array[Vers::VmExecLogResponse::Entry]) }
      attr_accessor :entries

      # True when the end of file was reached.
      sig { returns(T::Boolean) }
      attr_accessor :eof

      # Next byte offset to continue from.
      sig { returns(Integer) }
      attr_accessor :next_offset

      # Response for exec log tail requests.
      sig do
        params(
          entries: T::Array[Vers::VmExecLogResponse::Entry::OrHash],
          eof: T::Boolean,
          next_offset: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Returned log entries.
        entries:,
        # True when the end of file was reached.
        eof:,
        # Next byte offset to continue from.
        next_offset:
      )
      end

      sig do
        override.returns(
          {
            entries: T::Array[Vers::VmExecLogResponse::Entry],
            eof: T::Boolean,
            next_offset: Integer
          }
        )
      end
      def to_hash
      end

      class Entry < Vers::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Vers::VmExecLogResponse::Entry, Vers::Internal::AnyHash)
          end

        # Base64-encoded bytes from stdout/stderr chunk.
        sig { returns(String) }
        attr_accessor :data_b64

        # Streams available for exec logging.
        sig { returns(Vers::VmExecLogResponse::Entry::Stream::TaggedSymbol) }
        attr_accessor :stream

        sig { returns(String) }
        attr_accessor :timestamp

        sig { returns(T.nilable(String)) }
        attr_accessor :exec_id

        # Individual log entry describing emitted stdout/stderr chunk.
        sig do
          params(
            data_b64: String,
            stream: Vers::VmExecLogResponse::Entry::Stream::OrSymbol,
            timestamp: String,
            exec_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Base64-encoded bytes from stdout/stderr chunk.
          data_b64:,
          # Streams available for exec logging.
          stream:,
          timestamp:,
          exec_id: nil
        )
        end

        sig do
          override.returns(
            {
              data_b64: String,
              stream: Vers::VmExecLogResponse::Entry::Stream::TaggedSymbol,
              timestamp: String,
              exec_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # Streams available for exec logging.
        module Stream
          extend Vers::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Vers::VmExecLogResponse::Entry::Stream)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STDOUT =
            T.let(:stdout, Vers::VmExecLogResponse::Entry::Stream::TaggedSymbol)
          STDERR =
            T.let(:stderr, Vers::VmExecLogResponse::Entry::Stream::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Vers::VmExecLogResponse::Entry::Stream::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
