class Vehicle:
    def __init__(self, year, make, model):
        self.year = year
        self.make = make
        self.model = model
    def print_info(self):
        print(self.year, self.make, self.model)

car = Vehicle('2016', 'Kia', 'Optima')

car.print_info()
