defmodule ExunitBug.MixProject do
  use Mix.Project

  def project do
    [
      app: :exunit_bug,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      preferred_cli_env: [suite: :test],
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    []
  end

  defp aliases do
    [suite:
      [
        "test --only test",
        fn _ -> Mix.Task.reenable("test") end,
        "test --only a",
        fn _ -> Mix.Task.reenable("test") end,
        "test --only b"
      ]
    ]
  end
end
