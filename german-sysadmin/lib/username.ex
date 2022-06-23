defmodule Username do

  @accepted_caracters ?a..?z
  def sanitize([head | tail]) do
    char =
      case head do
        ?ä -> 'ae'
        ?ö -> 'oe'
        ?ü -> 'ue'
        ?ß -> 'ss'
        ?_ -> '_'
      x when x in @accepted_caracters -> [x]
      _ -> ''
    end

    char ++ sanitize(tail)
  end
  def sanitize([]), do: []
end
