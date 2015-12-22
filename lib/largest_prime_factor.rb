

def prime(num)

prime = [2,3]
six1 = 5
six2 = 7
test = []

if (num == 2 || num == 3)
    return true
end


if (num % prime[0] == 0 || num % prime[1] == 0)
    test.push(1)
	return test.length == 0

end



loop do

break if Math.sqrt(num) < prime[(prime.length-1)]
break if test.length != 0

collect1 = []
count = 0

	while (collect1.length == 0 &&  count <= (prime.length-1))

		if six1 % prime[count] == 0
			collect1.push(prime[count])
		end

		count+=1
	end

if collect1.length == 0
	prime.push(six1)

	if num % prime[(prime.length-1)] == 0
		test.push(prime[(prime.length-1)])
	end
end


break if test.length != 0
break if Math.sqrt(num) < prime[(prime.length-1)]

six1 += 6

collect2 = []
count = 0

	while (collect2.length == 0 &&  count <= (prime.length-1))

		if six2 % prime[count] == 0
			collect2.push(prime[count])
		end

		count+=1
	end



if collect2.length == 0
	prime.push(six1)

	if num % prime[(prime.length-1)] == 0
		test.push(prime[(prime.length-1)])
	end
end

break if test.length != 0
six2 += 6

end

return test.length == 0



end






def add(prime=[2,3])

output=[]
six1 = 5
six2 = 7

loop do

    count1=0
    try = []

    while (!prime[count1].nil? && try.length == 0 && six1 > prime[(prime.length-1)])

        if six1 % prime[count1] == 0
            try.push(1)
        end

        count1+=1

    end

    if try.length ==0 && six1 > prime[(prime.length-1)]
        output.push(six1)
    end

    #break if six1 <= prime[(prime.length-1)]
    break if output.length != 0

    count2=0
    try = []

    while (!prime[count2].nil? && try.length == 0 && six2 > prime[(prime.length-1)])

        if six2 % prime[count2] == 0
            try.push(1)
        end

        count2+=1

    end

    if try.length ==0 && six2 > prime[(prime.length-1)]
        output.push(six2)
    end

  #  break if six2 <= prime[(prime.length-1)]
    break if output.length != 0

    six1+=6
    six2+=6

end

return output[0]

end


def reduce(num, prime, index, final)

loop do
go = true
    if num % prime[index] == 0 && num / prime[index] != 1

        num = num / prime[index]

        if prime2(num)

            final.push(num)
        end
    elsif num % prime[index] == 0 && num / prime[index] == 1
        final.push(num)
    else
        go = false
    end

break if final.length == 1 || go == false
end

return num, final

end



def largest_prime_factor(num)
prime = [2,3]
final = []
index = 0

loop do

if prime[index].nil? && Math.sqrt(num) >= prime[(prime.length-1)]
    prime.push(add(prime))
elsif  prime[index].nil? && Math.sqrt(num) < prime[(prime.length-1)]
    final.push(num)
end
break if final.length == 1
num, final = reduce(num,prime,index,final)

break if final.length == 1
index+=1

end
return final[0]

end






def prime2(num)
prime = [2,3]
final = []
index = 0

loop do

if prime[index].nil? && Math.sqrt(num) >= prime[(prime.length-1)]
    prime.push(add(prime))
end

num, final = reduce_prime(num,prime,index,final)

break if final.length == 1
break if Math.sqrt(num) < prime[(prime.length-1)]
index+=1

end
return final.nil?

end









def reduce_prime(num, prime, index, final)

loop do
go = true
    if num % prime[index] == 0 && num / prime[index] != 1

        final.push(num)

    else
        go = false
    end

break if final.length == 1 || go == false
end

return num, final

end

def prime(num)
prime = [2,3]
final = []
index = 0

loop do

if prime[index].nil? && Math.sqrt(num) >= prime[(prime.length-1)]
    prime.push(add(prime))

end

num, final = reduce_prime(num,prime,index,final)

break if final.length == 1
break if Math.sqrt(num) < prime[(prime.length-1)]
index+=1

end
return final.length == 0
#return final
end








