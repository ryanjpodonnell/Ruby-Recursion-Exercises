def bsearch(array, target)
  search_location = (array.size)/2

  if array[search_location] == target
    return search_location
  elsif array[search_location] > target
    return bsearch(array[0..search_location-1], target)
  else
    return search_location + bsearch(array[search_location..-1], target)
  end
end