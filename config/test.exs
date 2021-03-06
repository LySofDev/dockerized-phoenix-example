use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :greenfy, GreenfyWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :greenfy, Greenfy.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "",
  database: "greenfy_test",
  hostname: "database",
  pool: Ecto.Adapters.SQL.Sandbox
