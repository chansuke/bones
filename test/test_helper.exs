ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Bones.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Bones.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Bones.Repo)

