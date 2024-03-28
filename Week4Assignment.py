# Python classes assignment
# Developer : Phala Mathobela
# Email: phalamat676@gmail.com

class Person:
    """ This is a class for an object Person """
    def __init__(self, name, age, gender):
        self.name = name
        self.age = age
        self.gender = gender

    def introduce(self):
        """ This method will introduce the person's name when invoked."""
        print(f"The name of the person is {self.name}, and their age is {self.age} and gender is {self.gender}")

# Get input from the user
name = input("Capture your name: ")
age = input("Capture your age: ")
gender = input("Capture your gender: ")

# Create an instance of a person with the given inputs
individual = Person(name, age, gender)

# Invoke the introduce method
individual.introduce()