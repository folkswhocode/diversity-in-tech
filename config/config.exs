# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :diversity_in_tech,
  ecto_repos: [DiversityInTech.Repo]

# Configures the endpoint
config :diversity_in_tech, DiversityInTechWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Dubi9WkJFM4QGAFNT9tl1PrKdbQ4fQoOTWqxLyINYTnRsvzmEatUL5TYoeze3SCQ",
  render_errors: [view: DiversityInTechWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DiversityInTech.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
