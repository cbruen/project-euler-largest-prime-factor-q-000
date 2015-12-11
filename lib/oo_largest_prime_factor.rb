class LargestPrimeFactor
  def initialize(number)
    @number = number
    @prime = [2,3]
    @final = []
  end


def add
output=[]
six1 = 5
six2 = 7
loop do
    count1=0
    try = []
    while (!@prime[count1].nil? && try.length == 0 && six1 > @prime[(@prime.length-1)])
        if six1 % @prime[count1] == 0
            try.push(1)
        end
        count1+=1
    end
    if try.length ==0 && six1 > @prime[(@prime.length-1)]
        output.push(six1)
    end
    break if output.length != 0
    count2=0
    try = []
    while (!@prime[count2].nil? && try.length == 0 && six2 > @prime[(@prime.length-1)])
        if six2 % @prime[count2] == 0
            try.push(1)
        end
        count2+=1
    end
    if try.length ==0 && six2 > @prime[(@prime.length-1)]
        output.push(six2)
    end
    break if output.length != 0
    six1+=6
    six2+=6
end
return output[0]
end



  def reduce_prime(index)
    change = []
  loop do
  go = true
    if @number % @prime[index] == 0 && @number / @prime[index] != 1
      change.push(@number)
    else
        go = false
    end
    break if change.length == 1 || go == false
  end
    return @number, change
  end


  def prime
  change = []
  index = 0
  loop do
  if @prime[index].nil? && Math.sqrt(@number) >= @prime[(@prime.length-1)]
    @prime.push(add)
  end
    @number, change = reduce_prime(index)
    break if change.length == 1
  break if Math.sqrt(@number) < @prime[(@prime.length-1)]
  index+=1
  end
    return change.length == 0
  end


def reduce(index)
loop do
go = true
    if @number % @prime[index] == 0 && @number / @prime[index] != 1
        @number = @number / @prime[index]
        if prime
            @final.push(@number)
        end
    elsif @number % @prime[index] == 0 && @number / @prime[index] == 1
        @final.push(@number)
    else
        go = false
    end
break if @final.length == 1 || go == false
end
return @number, @final
end


 def number
@final = []
index = 0
    loop do
        if @prime[index].nil? && Math.sqrt(@number) >= @prime[(@prime.length-1)]
    @prime.push(add)
    elsif @prime[index].nil? && Math.sqrt(@number) < @prime[(@prime.length-1)]
    @final.push(@number)
    end
    break if @final.length == 1
    @number, @final = reduce(index)
    break if @final.length == 1
        index+=1
        end
        return @final[0]
    end




end