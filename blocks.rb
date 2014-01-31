class Array

  def my_each(&prc)
    i = 0
    while i < self.length
      prc.call(self[i])
      i += 1
    end
  end

  def my_map(&prc)
    result = []

    self.my_each {|el| result << prc.call(el)}
    result
  end


  def my_select(&prc)
    result = []

    self.my_each {|el| result << el if prc.call(el) == true }
    result
  end

  def my_inject(&prc)
    return_value = self[0]

    i = 0
    self.my_each do |el|
      if i != 0
        return_value = prc.call(return_value, el)
      end
      i += 1
    end
    return_value
  end

  def my_sort!(&prc)
    sorted = false
    until sorted do
      sorted = true

      (self.length-1).times do |i|
        if prc.call(self[i], self[i+1]) == 1
          self[i], self[i+1] = self[i+1], self[i]
          sorted = false
        end
      end
    end
    return self
  end

end

def eval_block(*args, &prc)

  if prc == nil
    return "No blocks given!"
  else
    prc.call(*args)
  end

end