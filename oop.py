class Person:
    def __init__(self, name, age, grade, gpa):
       self.name = name
       self.age = age
       self.grade = grade
       self.gpa = gpa

    def __str__(self):
        return f"{self.name} is {self.age} in {self.grade}th grade with a {self.gpa} gpa!"
    
    def get_older(self):
        self.age += 1
        self.grade += 1

class Course:
    def __init__(self, name, teacher, num_of_students, block):
        self.name = name
        self.teacher = teacher
        self.num_of_students = num_of_students
        self.block = block

    def __str__(self):
        return f"The class {self.name} is taught by {self.teacher} during {self.block} block with {self.num_of_students} with students."
    
    def add_students(self, num):
        self.num_of_students += num

    def drop_students(self, num):
        self.num_of_students -= num

def main():
    
    Hannah = Person('Hannah', 16, 11, 3.9)
    print(Hannah.__str__())
    Hannah.get_older()
    print(Hannah.__str__())

    math = Course('Calculus BC', 'John Smith', 23, 5)
    print(math.__str__())
    math.add_students(10)
    print(math.__str__())
    math.drop_students(3)
    print(math.__str__())

main()