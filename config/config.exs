# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :lewis,
  ecto_repos: [Lewis.Repo]

# Configures the endpoint
config :lewis, LewisWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/mBj3jaJV00ZIFxCs0XImBe1SflXr2MuXD77h13Szfn8G/DS+2rki1VEip1AJoPj",
  render_errors: [view: LewisWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Lewis.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
