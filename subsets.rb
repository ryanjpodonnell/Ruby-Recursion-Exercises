def subsets(arr)

  if arr.length == 0
    return [arr]
  else
    previous_call = subsets(arr[0..-2])
    #previous_call << arr
    next_subsets = subsets(arr[0..-2])

    next_subsets.each do |set|
      set << arr[-1]
      previous_call << set
    end

    previous_call
  end

end