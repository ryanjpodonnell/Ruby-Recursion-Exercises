def range (start, finish)
    if (finish - start) <= 1
      return []
    else
      previous_range = range(start + 1, finish)
      previous_range.unshift(start + 1)
    end
end

def sum_iterative (arr)
  sum = 0
  arr.each do |num|
    sum += num
  end
  sum
end

def sum_recursive (arr)
  if arr.length == 1
    return arr[0]
  else
    one_less = sum_recursive(arr[1..-1])
    one_less + arr[0]
  end
end