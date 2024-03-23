defmodule ListLength do
  defp count_list([], acc), do: acc

  defp count_list([_ | tail], acc) do
    acc = acc + 1
    count_list(tail, acc)
  end

  def call(list), do: count_list(list, 0)
end

# [1, 3, 6, 43, 6]
# 1) [3,6,43,6] ; acc=0+1=1 ; count_list([3,6,43,6], 1)
# 2) [6,43,6] ; acc=1+1=2 ; count_list([6,43,6], 2)
# 3) [43,6] ; acc=2+1=3 ; count_list([43,6], 3)
# ...
