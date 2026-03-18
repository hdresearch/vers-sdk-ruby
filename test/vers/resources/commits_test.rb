# frozen_string_literal: true

require_relative "../test_helper"

class Vers::Test::Resources::CommitsTest < Vers::Test::ResourceTest
  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @vers.commits.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", is_public: true)

    assert_pattern do
      response => Vers::CommitInfo
    end

    assert_pattern do
      response => {
        commit_id: String,
        created_at: String,
        is_public: Vers::Internal::Type::Boolean,
        name: String,
        owner_id: String,
        description: String | nil,
        grandparent_commit_id: String | nil,
        parent_vm_id: String | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @vers.commits.list

    assert_pattern do
      response => Vers::ListCommitsResponse
    end

    assert_pattern do
      response => {
        commits: ^(Vers::Internal::Type::ArrayOf[Vers::CommitInfo]),
        limit: Integer,
        offset: Integer,
        total: Integer
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @vers.commits.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end

  def test_list_parents
    skip("Mock server tests are disabled")

    response = @vers.commits.list_parents("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => ^(Vers::Internal::Type::ArrayOf[Vers::Models::CommitListParentsResponseItem])
    end
  end

  def test_list_public
    skip("Mock server tests are disabled")

    response = @vers.commits.list_public

    assert_pattern do
      response => Vers::ListCommitsResponse
    end

    assert_pattern do
      response => {
        commits: ^(Vers::Internal::Type::ArrayOf[Vers::CommitInfo]),
        limit: Integer,
        offset: Integer,
        total: Integer
      }
    end
  end
end
