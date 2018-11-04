# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :greenfy,
  ecto_repos: [Greenfy.Repo]

# Configures the endpoint
config :greenfy, GreenfyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NMV7sYr43PmwRyW0o0lKaZ8mpl1Ef8w94YKmYYxXQAyJC1z3ydPyfJ6t8+7tWqb3",
  render_errors: [view: GreenfyWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Greenfy.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
