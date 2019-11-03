# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_view_examples,
  ecto_repos: [LiveViewExamples.Repo]

# Configures the endpoint
config :live_view_examples, LiveViewExamplesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "un7VSOOWYJvNG1ER9Nrfzti6xXxH8Ilyk3vXxXD02FdttlBIQxNjOJ37XuyIh/7Y",
  render_errors: [view: LiveViewExamplesWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LiveViewExamples.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "6eteyribt6ohn+N0m+UTI1CQ8KNg1yEM"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
