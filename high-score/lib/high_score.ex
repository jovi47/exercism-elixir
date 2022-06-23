defmodule HighScore do

  @initial_score 0
  @initial_map %{}
  def new(), do: @initial_map

  def add_player(scores, name, score \\  @initial_score) do
    scores
    |> Map.put(name, score)
  end

  def remove_player(scores, name) do
   scores
   |> Map.delete(name)
  end

  def reset_score(scores, name) do
    scores
    |> Map.put(name,  @initial_score)
  end

  def update_score(scores, name, score) do
    scores
    |> Map.update(name, score, &(&1+score))
  end

  def get_players(scores), do: Map.keys(scores)

end
