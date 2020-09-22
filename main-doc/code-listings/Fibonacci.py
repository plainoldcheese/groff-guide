fib = [0,1]
i = 1
print(fib[0])
while fib[i]<=842040:
	print(fib[i])
	i +=1
	fib.append(fib[i-1] + fib[i-2])