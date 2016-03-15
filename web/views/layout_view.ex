defmodule Bones.LayoutView do
  use Bones.Web, :view

  def current_user(conn) do
    Plug.Conn.get_session(conn, :current_user)
  end
end
