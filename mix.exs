defmodule Proof.Mixfile do
  use Mix.Project

  def project do
    [
      app: :proof,
      version: "0.0.1",
      description: description(),
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps,
      package: package()
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description do
    "CLI to query scryfall.com"
  end

  defp package do
    [
      name: "proof",
      maintainers: ["Marek Stasikowski"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/kosmotaur/proof"}
    ]
  end
end
