word = input('What word would you like to know has how many letters in it? ')

counts = {}

for letters in word:
    if letters not in counts:
        counts[letters] = 1
    else:
        counts[letters] += 1

print(counts)
