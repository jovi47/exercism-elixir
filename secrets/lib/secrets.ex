defmodule Secrets do

  use Bitwise
  def secret_add(secret) do
    fn value -> value + secret end
  end

  def secret_subtract(secret) do
     fn value -> value - secret end
  end

  def secret_multiply(secret) do
    &(&1 * secret)
  end

  def secret_divide(secret) do
    fn value -> floor(value/secret) end
  end

  def secret_and(secret) do
   &(&1 &&& secret)
  end

  def secret_xor(secret) do
    &bxor(&1,secret)
  end

  def secret_combine(secret_function1, secret_function2) do
    # Please implement the secret_combine/2 function
    &(&1 |> then(secret_function1) |> then(secret_function2))
  end
end
