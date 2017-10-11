from pprint import pprint as pp

class sum_finder():

    def main(self, max):
        total = 0
        for i in range(1, max):
            if i % 3 == 0 or  i % 5 == 0:
                total = total + 1
        return total



if __name__ == "__main__":

    main = sum_finder()
    result = main.main(50000000)
    print(result)



        # is_sorted = False
        # array_len = len(my_array)
        # while not is_sorted:
        #     is_sorted = True
        #     array_len = array_len - 1
        #     for i in range(0,array_len ):
        #         if i + 1 == len(my_array):
        #             continue
        #         if my_array[1] > my_array[i + 1]:
        #             temp = my_array[1]
        #             my_array[1] = my_array[i + 1]
        #             my_array[i + 1] = temp
        #             is_sorted = False
