# frozen_string_literal: true

require_relative "../test_helper"

class Vers::Test::Resources::RepositoriesTest < Vers::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @vers.repositories.create(name: "name")

    assert_pattern do
      response => Vers::CreateRepositoryResponse
    end

    assert_pattern do
      response => {
        name: String,
        repo_id: String
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @vers.repositories.list

    assert_pattern do
      response => Vers::ListRepositoriesResponse
    end

    assert_pattern do
      response => {
        repositories: ^(Vers::Internal::Type::ArrayOf[Vers::RepositoryInfo])
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @vers.repositories.delete("repo_name")

    assert_pattern do
      response => nil
    end
  end

  def test_create_tag_required_params
    skip("Mock server tests are disabled")

    response =
      @vers.repositories.create_tag(
        "repo_name",
        commit_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        tag_name: "tag_name"
      )

    assert_pattern do
      response => Vers::CreateRepoTagResponse
    end

    assert_pattern do
      response => {
        commit_id: String,
        reference: String,
        tag_id: String
      }
    end
  end

  def test_delete_tag_required_params
    skip("Mock server tests are disabled")

    response = @vers.repositories.delete_tag("tag_name", repo_name: "repo_name")

    assert_pattern do
      response => nil
    end
  end

  def test_fork__required_params
    skip("Mock server tests are disabled")

    response =
      @vers.repositories.fork_(source_org: "source_org", source_repo: "source_repo", source_tag: "source_tag")

    assert_pattern do
      response => Vers::ForkRepositoryResponse
    end

    assert_pattern do
      response => {
        commit_id: String,
        reference: String,
        repo_name: String,
        tag_name: String,
        vm_id: String
      }
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @vers.repositories.get("repo_name")

    assert_pattern do
      response => Vers::RepositoryInfo
    end

    assert_pattern do
      response => {
        created_at: Time,
        is_public: Vers::Internal::Type::Boolean,
        name: String,
        repo_id: String,
        description: String | nil
      }
    end
  end

  def test_get_tag_required_params
    skip("Mock server tests are disabled")

    response = @vers.repositories.get_tag("tag_name", repo_name: "repo_name")

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

  def test_list_tags
    skip("Mock server tests are disabled")

    response = @vers.repositories.list_tags("repo_name")

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

  def test_set_visibility_required_params
    skip("Mock server tests are disabled")

    response = @vers.repositories.set_visibility("repo_name", is_public: true)

    assert_pattern do
      response => nil
    end
  end

  def test_update_tag_required_params
    skip("Mock server tests are disabled")

    response = @vers.repositories.update_tag("tag_name", repo_name: "repo_name")

    assert_pattern do
      response => nil
    end
  end
end
