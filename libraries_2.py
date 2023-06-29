from math import pow
from math import sqrt
from random import randint
from random import shuffle
from random import choice

result_1 = pow(2, 4)
print(f"Result_1 is {result_1}")

result_2 = sqrt(16)
print(f"Result_2 is {result_2}")

result_3 = randint(0, 100)
print(f"Result_3 is {result_3}")

names = ["Elena", "Emma", "Emily", "Abagail", "Charlotte", "Hannah"]
print(f"Names: {names}")

shuffle(names)
print(f"Names after shuffling: {names}")

result_4 = choice(names)
print(f"Chosen name is {result_4}")