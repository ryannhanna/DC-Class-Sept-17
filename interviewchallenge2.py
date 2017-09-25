# # Question 1
# n = int(input("Pick a Number? "))
def multi(n):
    sequence = [n]
    if n < 1:
       return []
    while n > 1:
       if n % 2 == 0:
         n = n / 2
       else:
         n = 3 * n + 1

       sequence.append(n)
    return sequence

print(multi(45))
print(multi(60))








# Question 2
