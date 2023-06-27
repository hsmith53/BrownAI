#Hannah Smith
#Python Algorithm Assignment

#Task 1
hours = float(input('Type in your number of hours: '))
print(f'That is equal to {hours * 60} minutes!')

#Task 2
unit = input('Would you like to convert from hours or minutes? ')
while unit != "minutes" and unit != "hours":
    print('Your answer must be either "minutes" or "hours"!')
    unit = input('Would you like to convert from hours or minutes? ')

if unit == 'hours':
    hours = float(input('Type in your number of hours: '))
    print(f'That is equal to {hours * 60} minutes!')

elif unit == 'minutes':
    minutes = float(input('Type in your number of minutes: '))
    print(f'That is equal to {minutes / 60} hours!')

#Task 3
word = input("Type in your word: ")

num_letters = 0

for letter in word:
    if letter != -1:
        num_letters +=1

print(f'Your word has {num_letters} letters!')