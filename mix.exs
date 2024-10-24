defmodule MyApp.MixProject do
  use Mix.Project

  def project do
    [
      app: :my_app,
      version: "0.1.0",
      elixir: "~> 1.9",
      build_embedded: true,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {MyApp, []},
      extra_applications: [:crypto]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # scenic 0.11.2 + scenic_driver_local 0.11.0 does support png transparency
      # {:scenic, "0.11.2"},
      # {:scenic_driver_local, "0.11.0"},

      # scenic 0.12.0-rc.0 + scenic_driver_local 0.12.0-rc.0 does not support png transparency
      # {:scenic, "0.12.0-rc.0"},
      # {:scenic_driver_local, "0.12.0-rc.0"},

      # scenic 0.12.0-rc.0 + scenic_driver_local 0.11.0 does support png transparency
      # {:scenic, "0.12.0-rc.0", override: true},
      # {:scenic_driver_local, "0.11.0"},

      # scenic 0.11.2 + scenic_driver_local 0.12.0-rc.0 does not support png transparency
      {:scenic, "0.11.2", override: true},
      {:scenic_driver_local, "0.12.0-rc.0"},
      {:elixir_make, "0.8.4", override: true},
    ]
  end
end
