defmodule Bones.SessionController do
  use Bones.Web, :controller

  def new(conn, _params) do
    render conn, "new.html"
  end
end
