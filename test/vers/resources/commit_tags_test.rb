# frozen_string_literal: true

require_relative "../test_helper"

class Vers::Test::Resources::CommitTagsTest < Vers::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @vers.commit_tags.create(commit_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", tag_name: "tag_name")

    assert_pattern do
      response => Vers::CreateTagResponse
    end

    assert_pattern do
      response => {
        commit_id: String,
        tag_id: String,
        tag_name: String
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @vers.commit_tags.update("tag_name")

    assert_pattern do
      response => nil
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @vers.commit_tags.list

    assert_pattern do
      response => Vers::ListTagsResponse
    end

    assert_pattern do
      response => {
        tags: ^(Vers::Internal::Type::ArrayOf[Vers::TagInfo])
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @vers.commit_tags.delete("tag_name")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @vers.commit_tags.get("tag_name")

    assert_pattern do
      response => Vers::TagInfo
    end

    assert_pattern do
      response => {
        commit_id: String,
        created_at: Time,
        tag_id: String,
        tag_name: String,
        updated_at: Time,
        description: String | nil
      }
    end
  end
end
