from math import pow as p
from math import sqrt as s
from random import randint as r
from random import shuffle as sh
from random import choice as c

result_1 = p(2, 4)
print(f"Result_1 is {result_1}")

result_2 = s(16)
print(f"Result_2 is {result_2}")

result_3 = r(0, 100)
print(f"Result_3 is {result_3}")

names = ["Elena", "Emma", "Emily", "Abagail", "Charlotte", "Hannah"]
print(f"Names: {names}")

sh(names)
print(f"Names after shuffling: {names}")

result_4 = c(names)
print(f"Chosen name is {result_4}")