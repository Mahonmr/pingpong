class Fixnum
  define_method(:pingpong) do
    output = []
    for num in 1..self
      output << num.result
    end
    return output
  end

  define_method(:result) do
    if self % 15 == 0
      return "pingpong"
    elsif self % 3 == 0
      return "ping"
    elsif self % 5 == 0
      return "pong"
    else
      return self
    end
  end
end
