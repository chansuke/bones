defmodule Bones.UserTest do
  use Bones.ModelCase

  alias Bones.User

  @valid_attrs %{email: "test@test.com", password: "test1234", password_confirmation: "test1234", username: "testuser"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end

  test "password_digest value gets set to a hash" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert Ecto.Changeset.get_change(changeset, :password_digest) == "ABCDE"
  end
end
