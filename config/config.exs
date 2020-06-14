# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :gravel,
  ecto_repos: [Gravel.Repo]

# Configures the endpoint
config :gravel, GravelWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WWqIY03FkydESLQ/SS+qW+dq3tw57kOv6yTWkH61IaYX2eyYu2UreR/QhRl29D4O",
  render_errors: [view: GravelWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Gravel.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "1OLYnkOQ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
