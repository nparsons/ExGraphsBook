defmodule ExGraphsBook.MixProject do
  use Mix.Project

  def project do
    [
      aliases: aliases(),
      apps: [
        :d_graph,
        :graph_commons,
        :graph_compute,
        :native_graph,
        :property_graph,
        :rdf_graph,
        :tinker_graph
      ],
      apps_path: "apps",
      docs: [
        main: "readme",
        extras: ["README.md"]
      ],
      version: "0.1.0",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Dependencies listed here are available only for this
  # project and cannot be accessed from applications inside
  # the apps folder.
  #
  # Run "mix help deps" for examples and options.
  defp deps do
    []
  end

  defp aliases do
    [
      test_d_graph: "cmd --app d_graph mix test --color",
      test_graph_commons: "cmd --app graph_commons mix test --color",
      test_graph_compute: "cmd --app graph_compute mix test --color",
      test_native_graph: "cmd --app native_graph mix test --color",
      test_property_graph: "cmd --app property_graph mix test --color",
      test_rdf_graph: "cmd --app rdf_graph mix test --color",
      test_tinker_graph: "cmd --app tinker_graph mix test --color"
    ]
  end
end
