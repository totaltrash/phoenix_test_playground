defmodule MyAppWeb.Feature.SmokeTest do
  use MyAppWeb.FeatureCase, async: true

  test "admin can create user", %{conn: conn} do
    conn
    |> visit("/")
    |> assert_has("div", text: "Phoenix Framework")
  end
end
