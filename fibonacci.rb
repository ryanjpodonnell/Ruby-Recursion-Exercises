def fib(n)
  if n == 1
    return [0]
  elsif n == 2
    return [0, 1]
  else
    one_less = fib(n-1)
    one_less << one_less[-1] + one_less[-2]
    return one_less
  end

end