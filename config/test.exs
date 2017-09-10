use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :diversity_in_tech, DiversityInTechWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :diversity_in_tech, DiversityInTech.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "",
  database: "diversity_in_tech_test",
  hostname: "db",
  pool: Ecto.Adapters.SQL.Sandbox
