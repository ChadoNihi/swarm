defmodule Swarm.Web.PageController do
  use Swarm.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
