defmodule Elixirsession.Repo do
  use Ecto.Repo,
    otp_app: :elixirsession,
    adapter: Ecto.Adapters.Postgres
end
