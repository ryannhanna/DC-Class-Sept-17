class Person:
    def __init__(self, name, email, phone):
        self.name = name
        self.email = email
        self.phone = phone
        self.friends = []
        self.count = 0

    def __str__(self):
        return 'Person: {} {} {}'.format(self.name, self.email, self.phone)

    def greet(self, other_person):
        self.count += 1
        print('Hello {}, I\'m {}!'.format(other_person.name, self.name))

    def greeting_count(self):
        print(self.count)

    def print_info(self):
        print(self.name + "'s email: " + self.email + ', ' + self.name + "'s phone: " + self.phone, sep='')

    def add_friend(self, other_person):
        self.friends.append(other_person)

    def num_friends(self):
        print(self.name + "'s friends:", len(self.friends))

sonny = Person('Sonny', 'sonny@hotmail.com', '483-485-4948')
jordan = Person('Jordan', 'jordan@aol.com', '495-586-3456')

sonny.greeting_count()
sonny.greet(jordan)
sonny.greeting_count()
jordan.greet(sonny)

print(sonny)
print(jordan)


# Instantiate an instance object of Person with name of 'Sonny', email of 'sonny@hotmail.com', and phone of '483-485-4948', store it in the variable sonny.
# Instantiate another person with the name of 'Jordan', email of 'jordan@aol.com', and phone of '495-586-3456', store it in the variable 'jordan'.
# Have sonny greet jordan using the greet method.
# Have jordan greet sonny using the greet method.
# Write a print statement to print the contact info (email and phone) of Sonny.
# Write another print statement to print the contact info of Jordan.
