defmodule MyAppWeb.PageLiveTest do
  use MyAppWeb.ConnCase

  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, page_live, disconnected_html} = live(conn, "/")

    assert disconnected_html =~
             "Welcome to O'Hare!" |> Phoenix.HTML.html_escape() |> Phoenix.HTML.safe_to_string()

    assert render(page_live) =~
             "Welcome to O'Hare!" |> Phoenix.HTML.html_escape() |> Phoenix.HTML.safe_to_string()
  end
end
