defmodule ElixirsessionWeb.PageController do
  use ElixirsessionWeb, :controller

  def index(conn, _params) do
    name = get_session(conn, :name)
    render(conn, "index.html", name: name)
  end

  def create(conn, %{"name" => name}) do
    conn = put_session(conn, :name, name)
    redirect(conn, to: Routes.page_path(conn, :index))
  end
end
