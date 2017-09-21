phrase = input("What phrasae would like to know the breakdown of words in it? ")

lists = phrase.split()
count ={}

for words in lists:
    if words not in count:
        count[words] = 1
    else:
        count[words] += 1
print (count)
