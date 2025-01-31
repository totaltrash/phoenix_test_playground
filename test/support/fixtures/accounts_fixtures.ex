defmodule MyApp.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `MyApp.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        name: "some name",
        secret: "some secret",
        email: "some@example.com"
      })
      |> MyApp.Accounts.create_user()

    user
  end
end
