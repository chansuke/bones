use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :bones, Bones.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :bones, Bones.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "bones_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# Configure encryption
config :comeonin, bcrypt_log_rounds: 5
