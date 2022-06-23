defmodule HighSchoolSweetheart do
  def first_letter(name) do
    String.trim(name)
    |> String.first()
  end

  def initial(name) do
    String.upcase(name)
    |> String.first()
    |> Kernel.<>(".")
  end

  def initials(full_name) do
    String.split(full_name)
    |> Enum.map(&(initial/1))
    |> Enum.join(" ")
  end

  def pair(full_name1, full_name2) do
    "     ******       ******\n   **      **   **      **\n **         ** **         **\n**            *            **\n**                         **\n**     #{initials(full_name1)}  +  #{initials(full_name2)}     **\n **                       **\n   **                   **\n     **               **\n       **           **\n         **       **\n           **   **\n             ***\n              *\n"
  end
end
