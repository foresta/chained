defmodule Chained.DocumentTest do
  use Chained.ModelCase

  alias Chained.Document

  @valid_attrs %{body: "some content", hash: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Document.changeset(%Document{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Document.changeset(%Document{}, @invalid_attrs)
    refute changeset.valid?
  end
end
