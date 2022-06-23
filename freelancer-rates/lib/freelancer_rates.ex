defmodule FreelancerRates do
  @day 8.0
  @month 22.0
  def daily_rate(hourly_rate), do: hourly_rate * @day
  def apply_discount(before_discount, discount), do:  before_discount - (before_discount/100.0 * discount)
  def monthly_rate(hourly_rate, discount) do
    day = apply_discount(hourly_rate, discount)
    |> daily_rate()
    ceil(day * @month)
  end
  def days_in_budget(budget, hourly_rate, discount) do
    daily = apply_discount(hourly_rate, discount)
    |> daily_rate()
    Float.floor(budget/daily, 1)
  end

end
