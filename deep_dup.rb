def deep_dup (arr)
  result = []

  arr.each do |el|
    if el.is_a?(Array) == false
      result << el
    else
      result << deep_dup(el)
    end
  end

  result
end