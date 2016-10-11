defmodule FakeServer.Mixfile do
  use Mix.Project

  def project do
    [app: :fake_server,
     version: "0.4.1",
     elixir: "~> 1.2",
     description: description,
     package: package,
     test_coverage: [tool: ExCoveralls],
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :cowboy]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:excoveralls, "~> 0.5", only: :test},
     {:mock, "~> 0.2.0", only: :test},
     {:credo, "~> 0.4.12", only: [:dev, :test]},
     {:ex_doc, ">= 0.0.0", only: :dev},
     {:inch_ex, only: :docs},
     {:cowboy, "~> 1.0.0"}]
  end

	defp description do
    """
    FakeServer is a simple HTTP server used to mock external services responses on your tests.
    """
  end

  defp package do
    [name: :fake_server,
     maintainers: ["Bernardo Lins"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/bernardolins/fake_server"}]
  end
end
