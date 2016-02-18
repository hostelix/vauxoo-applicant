"""
Module PrimeClass
"""


class PrimeClass(object):
    """
    methods:
        is_prime
    """

    def is_prime(self, num_int):
        """
            Determine if a number is prime
            Params:
            @num_int number integer
            Variables:
            @prime bool :is value function return
            @count int :is count exact division
        """
        num_int = int(num_int)
        prime = True
        count = 0
        
        if num_int == 1:
            return not prime

        for n in range(1, num_int+1):
            if num_int % n == 0:
                count += 1

            if count > 3:
                prime = False
                break
        return prime
