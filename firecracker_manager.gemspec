# frozen_string_literal: true

require_relative "lib/firecracker_manager/version"

Gem::Specification.new do |s|
  s.name = "firecracker-manager"
  s.version = FirecrackerManager::VERSION
  s.summary = "Ruby library to access the Vers API"
  s.authors = ["Vers"]
  s.email = "support@hdr.is"
  s.homepage = "https://gemdocs.org/gems/firecracker-manager"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/stainless-sdks/firecracker-manager-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.2.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "connection_pool"
end
