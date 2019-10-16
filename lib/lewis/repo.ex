defmodule Lewis.Repo do
  use Ecto.Repo,
    otp_app: :lewis,
    adapter: Ecto.Adapters.Postgres
end
