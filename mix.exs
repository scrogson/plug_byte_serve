defmodule PlugByteServe.Mixfile do
  use Mix.Project

  def project do
    [app: :plug_byte_serve,
     version: "0.1.0",
     elixir: "~> 0.15.0",
     deps: deps,
     package: package,
     name: "Plug Byte Serve",
     source_url: "https://github.com/masteinhauser/plug_byte_serve",
     homepage_url: "https://github.com/masteinhauser/plug_byte_serve",
     description: "A Plug for using HTTP Byte Serving in Plug applications.",
     docs: [readme: true, main: "README"]]
  end

  def application do
    [applications: []]
  end

  defp deps do
    [{:cowboy, "~> 1.0.0", only: [:test, :dev]},
     {:plug, "~> 0.5.0"},
     {:ex_doc, github: "elixir-lang/ex_doc", only: [:docs]}]
  end

  defp package do
    %{licenses: ["Apache 2"],
      links: %{"Github" => "https://github.com/masteinhauser/plug_byte_serve"}}
  end
end
