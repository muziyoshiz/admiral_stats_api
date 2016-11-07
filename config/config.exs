# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :admiral_stats_api,
  ecto_repos: [AdmiralStatsApi.Repo]

# Configures the endpoint
config :admiral_stats_api, AdmiralStatsApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "F5kUGFbhVb2oUXfox8JJvW7zu5Z0B9+j0IxSlf06Z6VwGw2OzALLGL+6T16gCcCc",
  render_errors: [view: AdmiralStatsApi.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AdmiralStatsApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
