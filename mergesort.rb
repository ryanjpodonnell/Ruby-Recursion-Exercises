def mergesort(arr)
  if arr.length == 1
    return arr
  end

  return merge(mergesort(arr[0..arr.length/2-1]),  mergesort(arr[arr.length/2..-1]))
end

def merge(arr1, arr2)
  merged = []

  until (arr1.size == 0 || arr2.size == 0)
    if arr1[0] <= arr2[0]
      merged << arr1.shift
    else
      merged << arr2.shift
    end
  end

  if arr2.size == 0
    return merged + arr1
  else
    return merged + arr2
  end

end