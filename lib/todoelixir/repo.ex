defmodule Todoelixir.Repo do
  use Ecto.Repo,
    otp_app: :todoelixir,
    adapter: Ecto.Adapters.Postgres
end
