defmodule LiveViewExamples.Repo do
  use Ecto.Repo,
    otp_app: :live_view_examples,
    adapter: Ecto.Adapters.Postgres
end
