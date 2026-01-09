# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "base64"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "openssl"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "vers/version"
require_relative "vers/internal/util"
require_relative "vers/internal/type/converter"
require_relative "vers/internal/type/unknown"
require_relative "vers/internal/type/boolean"
require_relative "vers/internal/type/file_input"
require_relative "vers/internal/type/enum"
require_relative "vers/internal/type/union"
require_relative "vers/internal/type/array_of"
require_relative "vers/internal/type/hash_of"
require_relative "vers/internal/type/base_model"
require_relative "vers/internal/type/base_page"
require_relative "vers/internal/type/request_parameters"
require_relative "vers/internal"
require_relative "vers/request_options"
require_relative "vers/file_part"
require_relative "vers/errors"
require_relative "vers/internal/transport/base_client"
require_relative "vers/internal/transport/pooled_net_requester"
require_relative "vers/client"
require_relative "vers/models/new_root_request"
require_relative "vers/models/vm_from_commit_request"
require_relative "vers/models/vm_update_state_request"
require_relative "vers/models/error_response"
require_relative "vers/models/new_vm_response"
require_relative "vers/models/vm"
require_relative "vers/models/vm_branch_params"
require_relative "vers/models/vm_commit_params"
require_relative "vers/models/vm_commit_response"
require_relative "vers/models/vm_create_root_params"
require_relative "vers/models/vm_delete_params"
require_relative "vers/models/vm_delete_response"
require_relative "vers/models/vm_get_ssh_key_params"
require_relative "vers/models/vm_list_params"
require_relative "vers/models/vm_list_response"
require_relative "vers/models/vm_restore_from_commit_params"
require_relative "vers/models/vm_ssh_key_response"
require_relative "vers/models/vm_status_params"
require_relative "vers/models/vm_update_state_params"
require_relative "vers/models"
require_relative "vers/resources/vm"
