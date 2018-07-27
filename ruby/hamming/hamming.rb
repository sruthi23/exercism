class Hamming
  def self.compute(param1,param2)
d = 0
    if param1.length == param2.length
      for i in param1.length
        if param1[i]!=param2[i]
          d = d+1
        end
      end
      puts d
    else
      raise ArgumentError
    end
  end
end
