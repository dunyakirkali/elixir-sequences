defmodule Sequences.Mixfile do
  use Mix.Project

  def project do
    [app: :sequences,
     version: "0.0.2",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
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
    [
      {:ex_doc, "~> 0.11", only: [:dev]}
    ]
  end



  defp description do
    """
  The Sequences module defines multiple methods that return a Stream of numbers, usually integers.
  
  The different Streams can be tapped in on-demand, by running any `Enum` function on them.
  *Be warned:* Do not use any function that iterates through the complete Stream. If you try this, *your code will hang*, as Elixir will never finish iterating through the infinite lists.


  For efficiency, these sequences are calculated in a way that re-uses previously calculated results whenever possible.
  
  See https://github.com/Qqwy/elixir-sequences for more information.

  """
  end

  defp package do
    [
     files: ["lib", "mix.exs", "README*", "LICENSE*"],
     maintainers: ["Qqwy"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/Qqwy/elixir-sequences"}]
  end
end
