bill = float(input("Total bill amount? "))
service = input("Level of service (good?, bad?, or fair?): ")
split  = float(input("Split how many ways? "))


if service == "good":
    tip = bill * .20
    total = bill + tip
    per_person = total / split
    print("Tip amount: {:.2f} Total amount: {:.2f} Amount per person {:.2f}".format(tip, total, per_person))
elif service == "bad":
    tip = bill * .10
    total = bill + tip
    per_person = total / split
    print("Tip amount: {:.2f} Total amount: {:.2f} Amount per person {:.2f}".format(tip, total, per_person))
elif service == "fair":
    tip = bill * .15
    total = bill + tip
    per_person = total / split
    print("Tip amount: {:.2f} Total amount: {:.2f} Amount per person {:.2f}".format(tip, total, per_person))
