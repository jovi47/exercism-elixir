defmodule LogLevel do

  @labels %{0 => {:trace, :no}, 1 => {:debug, :yes}, 2 => {:info, :yes}, 3 => {:warning, :yes}, 4 => {:error, :yes}, 5 => {:fatal, :no}}

  def to_label(level, legacy?) do
    case @labels[level] do
      {code, :yes} -> code
      {code, :no} -> handle_legacy?(legacy?,code)
      _ -> :unknown
    end
  end

  defp handle_legacy?(true, _code), do: :unknown
  defp handle_legacy?(false, code), do: code

  def alert_recipient(level, legacy?) do
    case to_label(level,legacy?) do
      code when code in [:fatal, :error] -> :ops
      code when code == :unknown and legacy? -> :dev1
      code when code == :unknown and not legacy? -> :dev2
      _ -> false
    end
  end
end
