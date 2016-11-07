use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :admiral_stats_api, AdmiralStatsApi.Endpoint,
  secret_key_base: "qat+Y4iTYjcV5EVYYI1NHZ+j9no6koN2PoE0Bj/bLxMDlZmbTD2Uvhcaw2tr5O48"

# Configure your database
config :admiral_stats_api, AdmiralStatsApi.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "root",
  password: "",
  database: "admiral_stats_api_prod",
  pool_size: 20
