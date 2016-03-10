defmodule Bones.PageController do
  use Bones.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
