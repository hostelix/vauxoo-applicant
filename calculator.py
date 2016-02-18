"""
Module CalculatorClass
"""


class CalculatorClass(object):

    """
        methods:
        sum
    """
    def sum(self, num_list):
        """
            sum all elements in list
            Params:
            @num_list list number
            Variables:
            @acum int :accumulates sum the all elements in list
        """
        acum = 0

        for n in num_list:
            acum += n
        return acum
