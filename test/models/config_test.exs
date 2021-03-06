defmodule UcxChat.ConfigTest do
  use UcxChat.ModelCase

  alias UcxChat.{Config, Config.General, Config.Message, Config.Layout, Config.FileUpload}

  @general_attrs Map.from_struct(%General{})
  @message_attrs Map.from_struct(%Message{})
  @layout_attrs Map.from_struct(%Layout{})
  @file_upload_attrs Map.from_struct(%FileUpload{})

  @valid_attrs %{general: @general_attrs, message: @message_attrs, layout: @layout_attrs, file_upload: @file_upload_attrs}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Config.changeset(%Config{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Config.changeset(%Config{}, @invalid_attrs)
    refute changeset.valid?
  end

  test "new changeset" do
    changeset = Config.new_changeset()
    assert changeset.valid?
  end
end
