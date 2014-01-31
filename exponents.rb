def exponent1(base, exp)
  if exp == 0
    return 1
  else
    return base * exponent1(base, exp - 1)
  end
end

def exponent2(base, exp)
  if exp == 0
    return 1
  elsif exp.even?
    return exponent2(base, exp/2)**2
  elsif exp.odd?
    return base * exponent2(base, (exp - 1)/2)**2
  end
end