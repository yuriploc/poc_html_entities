defmodule MyApp.Factory do
  use ExMachina.Ecto, repo: MyApp.Repo

  def user_factory do
    %MyApp.User{
      name: "Jane O'Hare",
      email: sequence(:email, &"email-#{&1}@example.com")
    }
  end
end
