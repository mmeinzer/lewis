defmodule Mix.Tasks.Db do
  use Mix.Task

  @shortdoc "Sets up a temporary docker postgres instance"
  def run(_) do
    System.cmd("docker", [
      "run",
      "-d",
      "--name",
      "lewis-postgres",
      "-p",
      "5432:5432",
      "--rm",
      "postgres:12-alpine"
    ])
  end
end
