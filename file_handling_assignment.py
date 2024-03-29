# Python file handling
# Developer : Phala Mathobela
# Email: phalamat676@gmail.com

try:
    with open("my_file.txt", "w") as myfile:  # Creating a new text file.
        myfile.write("dkndjdkdsda9er3q969362\n")
        myfile.write("@@@@@####$%^&*())__\n")
        myfile.write("90383643438484346")

# Reading the created file".

    with open("my_file.txt", "r") as myfile:
        print("***File contents***\n")
        print(myfile.read())

# Appending the file.

    with open("my_file.txt", "a") as myfile:
        myfile.write("\nTsadmaklda.\n")
        myfile.write("-----======++++++++.\n")
        myfile.write("!@#$%%@%%@%@^ string")

    with open("my_file.txt", "r") as myfile:
        print("\n***Appended file contents***\n")
        print(myfile.read())  # Reading contents of appended".

# Error handling.

except (FileNotFoundError, PermissionError) as exceptions:
    print(f"An error occurred: {exceptions}")

