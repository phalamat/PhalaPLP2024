# This is a program to create an empty list and then manipulate the list.
# Developer: Phala Mathobela

my_list = []
templist = [10, 20, 30, 40]

for element in templist: #my_list.append(10, 20, 30, 40)
    my_list.append(element)
print(f"Verify if list appended with elements 10, 20, 30, 40:\n{my_list}")

my_list.insert(1,15) # value 15 at the second position in the list.
print(f"\nVerify if value 15 is inserted to the 2nd position of list:\n{my_list}") #

templist = [50,60,70]
my_list.extend(templist)#appending the list
print(f"\nVerify if 50,50,70 elements are inserted to the list: \n{my_list}")

my_list.pop()#remove last element
print(f"\nVerify if last element is removed: \n{my_list}")

my_list.sort() #sorting in ascending order
print(f"\nList in ascending order: \n{my_list}")

ind = my_list.index(30)

print(f"\nThe index of value 30 is:\n {ind}")