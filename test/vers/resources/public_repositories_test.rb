# frozen_string_literal: true

require_relative "../test_helper"

class Vers::Test::Resources::PublicRepositoriesTest < Vers::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @vers.public_repositories.list

    assert_pattern do
      response => Vers::ListPublicRepositoriesResponse
    end

    assert_pattern do
      response => {
        repositories: ^(Vers::Internal::Type::ArrayOf[Vers::PublicRepositoryInfo])
      }
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @vers.public_repositories.get("repo_name", org_name: "org_name")

    assert_pattern do
      response => Vers::PublicRepositoryInfo
    end

    assert_pattern do
      response => {
        created_at: Time,
        full_name: String,
        name: String,
        org_name: String,
        repo_id: String,
        description: String | nil
      }
    end
  end

  def test_get_tag_required_params
    skip("Mock server tests are disabled")

    response = @vers.public_repositories.get_tag("tag_name", org_name: "org_name", repo_name: "repo_name")

    assert_pattern do
      response => Vers::RepoTagInfo
    end

    assert_pattern do
      response => {
        commit_id: String,
        created_at: Time,
        reference: String,
        tag_id: String,
        tag_name: String,
        updated_at: Time,
        description: String | nil
      }
    end
  end

  def test_list_tags_required_params
    skip("Mock server tests are disabled")

    response = @vers.public_repositories.list_tags("repo_name", org_name: "org_name")

    assert_pattern do
      response => Vers::ListRepoTagsResponse
    end

    assert_pattern do
      response => {
        repository: String,
        tags: ^(Vers::Internal::Type::ArrayOf[Vers::RepoTagInfo])
      }
    end
  end
end
