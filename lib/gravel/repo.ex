defmodule Gravel.Repo do
  use Ecto.Repo,
    otp_app: :gravel,
    adapter: Ecto.Adapters.Postgres
end
