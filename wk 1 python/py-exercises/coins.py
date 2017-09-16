coins = 0
print('You have {} coins.' .format(coins))
add = input('Do you want another?  (yes/no)')


while add == 'yes':
    coins += 1
    print("You have {} coins.".format(coins))
    add = input("Do you want another? (yes/no) ")


print("Bye!")
