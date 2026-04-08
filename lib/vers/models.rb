# frozen_string_literal: true

module Vers
  [Vers::Internal::Type::BaseModel, *Vers::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Vers::Internal::AnyHash) } }
  end

  Vers::Internal::Util.walk_namespaces(Vers::Models).each do |mod|
    case mod
    in Vers::Internal::Type::Enum | Vers::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Vers::Internal::Util.walk_namespaces(Vers::Models)
                      .lazy
                      .grep(Vers::Internal::Type::Union)
                      .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  CommitDeleteParams = Vers::Models::CommitDeleteParams

  CommitInfo = Vers::Models::CommitInfo

  CommitListParams = Vers::Models::CommitListParams

  CommitListParentsParams = Vers::Models::CommitListParentsParams

  CommitListPublicParams = Vers::Models::CommitListPublicParams

  CommitTagCreateParams = Vers::Models::CommitTagCreateParams

  CommitTagDeleteParams = Vers::Models::CommitTagDeleteParams

  CommitTagGetParams = Vers::Models::CommitTagGetParams

  CommitTagListParams = Vers::Models::CommitTagListParams

  CommitTagUpdateParams = Vers::Models::CommitTagUpdateParams

  CommitUpdateParams = Vers::Models::CommitUpdateParams

  CreateRepositoryRequest = Vers::Models::CreateRepositoryRequest

  CreateRepositoryResponse = Vers::Models::CreateRepositoryResponse

  CreateRepoTagRequest = Vers::Models::CreateRepoTagRequest

  CreateRepoTagResponse = Vers::Models::CreateRepoTagResponse

  CreateTagRequest = Vers::Models::CreateTagRequest

  CreateTagResponse = Vers::Models::CreateTagResponse

  ErrorResponse = Vers::Models::ErrorResponse

  ForkRepositoryRequest = Vers::Models::ForkRepositoryRequest

  ForkRepositoryResponse = Vers::Models::ForkRepositoryResponse

  ListCommitsResponse = Vers::Models::ListCommitsResponse

  ListPublicRepositoriesResponse = Vers::Models::ListPublicRepositoriesResponse

  ListRepositoriesResponse = Vers::Models::ListRepositoriesResponse

  ListRepoTagsResponse = Vers::Models::ListRepoTagsResponse

  ListTagsResponse = Vers::Models::ListTagsResponse

  NewRootRequest = Vers::Models::NewRootRequest

  NewVmResponse = Vers::Models::NewVmResponse

  NewVmsResponse = Vers::Models::NewVmsResponse

  PublicRepositoryGetParams = Vers::Models::PublicRepositoryGetParams

  PublicRepositoryGetTagParams = Vers::Models::PublicRepositoryGetTagParams

  PublicRepositoryInfo = Vers::Models::PublicRepositoryInfo

  PublicRepositoryListParams = Vers::Models::PublicRepositoryListParams

  PublicRepositoryListTagsParams = Vers::Models::PublicRepositoryListTagsParams

  RepositoryCreateParams = Vers::Models::RepositoryCreateParams

  RepositoryCreateTagParams = Vers::Models::RepositoryCreateTagParams

  RepositoryDeleteParams = Vers::Models::RepositoryDeleteParams

  RepositoryDeleteTagParams = Vers::Models::RepositoryDeleteTagParams

  RepositoryForkParams = Vers::Models::RepositoryForkParams

  RepositoryGetParams = Vers::Models::RepositoryGetParams

  RepositoryGetTagParams = Vers::Models::RepositoryGetTagParams

  RepositoryInfo = Vers::Models::RepositoryInfo

  RepositoryListParams = Vers::Models::RepositoryListParams

  RepositoryListTagsParams = Vers::Models::RepositoryListTagsParams

  RepositorySetVisibilityParams = Vers::Models::RepositorySetVisibilityParams

  RepositoryUpdateTagParams = Vers::Models::RepositoryUpdateTagParams

  RepoTagInfo = Vers::Models::RepoTagInfo

  SetRepositoryVisibilityRequest = Vers::Models::SetRepositoryVisibilityRequest

  TagInfo = Vers::Models::TagInfo

  UpdateCommitRequest = Vers::Models::UpdateCommitRequest

  UpdateRepoTagRequest = Vers::Models::UpdateRepoTagRequest

  UpdateTagRequest = Vers::Models::UpdateTagRequest

  VmAPI = Vers::Models::VmAPI

  VmBranchByCommitParams = Vers::Models::VmBranchByCommitParams

  VmBranchByTagParams = Vers::Models::VmBranchByTagParams

  VmBranchByVmParams = Vers::Models::VmBranchByVmParams

  VmBranchParams = Vers::Models::VmBranchParams

  VmCommitParams = Vers::Models::VmCommitParams

  VmCommitResponse = Vers::Models::VmCommitResponse

  VmCreateRootParams = Vers::Models::VmCreateRootParams

  VmDeleteParams = Vers::Models::VmDeleteParams

  VmDeleteResponse = Vers::Models::VmDeleteResponse

  VmExecLogQuery = Vers::Models::VmExecLogQuery

  VmExecLogResponse = Vers::Models::VmExecLogResponse

  VmExecParams = Vers::Models::VmExecParams

  VmExecRequest = Vers::Models::VmExecRequest

  VmExecResponse = Vers::Models::VmExecResponse

  VmExecStreamAttachParams = Vers::Models::VmExecStreamAttachParams

  VmExecStreamAttachRequest = Vers::Models::VmExecStreamAttachRequest

  VmExecStreamParams = Vers::Models::VmExecStreamParams

  VmFromCommitRequest = Vers::Models::VmFromCommitRequest

  VmGetLogsParams = Vers::Models::VmGetLogsParams

  VmGetMetadataParams = Vers::Models::VmGetMetadataParams

  VmGetSSHKeyParams = Vers::Models::VmGetSSHKeyParams

  VmListParams = Vers::Models::VmListParams

  VmMetadataResponse = Vers::Models::VmMetadataResponse

  VmResizeDiskParams = Vers::Models::VmResizeDiskParams

  VmResizeDiskRequest = Vers::Models::VmResizeDiskRequest

  VmRestoreFromCommitParams = Vers::Models::VmRestoreFromCommitParams

  VmSSHKeyResponse = Vers::Models::VmSSHKeyResponse

  VmStatusParams = Vers::Models::VmStatusParams

  VmUpdateStateParams = Vers::Models::VmUpdateStateParams

  VmUpdateStateRequest = Vers::Models::VmUpdateStateRequest
end
