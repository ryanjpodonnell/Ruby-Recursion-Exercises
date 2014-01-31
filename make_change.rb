def helper(value, currency_arr = [25, 10, 5, 1])
  if value == 0
    return []
  else
    currency_arr.each do |coin|
     if value - coin >= 0
       one_less = helper(value - coin, currency_arr)
       one_less << coin
       return one_less.sort.reverse
      end
    end
  end

end

def make_change(value, currency_arr = [25, 10, 5, 1])
  found_permutations = []

  currency_arr.length.times do |i|
    found_permutations << helper(value, currency_arr[i..-1])
  end

  found_permutations.sort_by! {|change_arr| change_arr.length}.first

end