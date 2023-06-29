import math as m
import random as r

result_1 = m.pow(2, 4)
print(f"Result_1 is {result_1}")

result_2 = m.sqrt(16)
print(f"Result_2 is {result_2}")

result_3 = r.randint(0, 100)
print(f"Result_3 is {result_3}")

names = ["Elena", "Emma", "Emily", "Abagail", "Charlotte", "Hannah"]
print(f"Names: {names}")

r.shuffle(names)
print(f"Names after shuffling: {names}")

result_4 = r.choice(names)
print(f"Chosen name is {result_4}")