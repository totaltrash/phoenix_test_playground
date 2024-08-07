defmodule MyAppWeb.Feature.SmokeTest do
  use MyAppWeb.FeatureCase, async: true

  test "admin can create user", %{conn: conn} do
    conn
    |> visit("/users/new")
    |> fill_in("Name", with: "Aragorn")
    |> fill_in("Email", with: "aragorn@gondormail.com")
    |> click_button("Save")
    |> assert_has("table", text: "Aragorn")
  end
end
