defmodule GravelWeb.PageController do
  use GravelWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
