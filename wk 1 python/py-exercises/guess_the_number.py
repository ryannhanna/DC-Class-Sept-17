# secret_number = 5
# print('I am thinking of a number between 1 and 10.')
# while True:
#     Guessed = float(input("What is the number? "))
#     if Guessed == secret_number :
#         print("Yes! You have won!")
#
#     else :
#         print("Incorrect, Try Again")
#
#         if Guessed < secret_number :
#             print("Too low")
#
#         if Guessed > secret_number :
#             print("Too High")

# guess game step 3
# import random
# my_random_number = random.randint(1, 10)
# print('I am thinking of a number between 1 and 10.')
# while True:
#     Guessed = float(input("What is the number? "))
#     if Guessed == my_random_number :
#         print("Yes! You have won!")
#
#     else :
#         print("Incorrect, Try Again")
#
#         if Guessed < my_random_number :
#             print("Too low")
#
#         if Guessed > my_random_number :
#             print("Too High")


#  guess game step 4
import random
Count =  5
my_random_number = random.randint(1, 10)
print('I am thinking of a number between 1 and 10.')
while True:
    Count -= 1
    print('You have {} guess left.'.format(Count))
    if Count == 0:
        print('You ran out of guesses!')
        print("Do you want to play again? (yes/no)")
    replay = (input("Do you want to play again (yes/no)? ")
       if replay == "yes"
           my_random_number = random.randint(1, 10)
           count = 5
       else:
           count = 0
           print("Bye!")

        break


    Guessed = float(input("What is the number? "))
    if Guessed == my_random_number :
        print("Yes! You have won!")

    else:
        print("Incorrect, Try Again")

    if Guessed < my_random_number :
        print("Too low")

    if Guessed > my_random_number :
        print("Too High")
