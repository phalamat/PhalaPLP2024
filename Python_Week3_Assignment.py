# This program prompts the user to enter the original price of an item and the discount percentage
# and then prints the final price after applying the discount.
# Developer: Phala Mathobela

def calculate_discount(price, discount_percent):
    """calculate discount function to calculate the discount based on user's inputs"""
    if discount_percent >= 20:
        final_price = price - (price * (discount_percent/100))
        print(f"The item price is R {final_price} on {discount_percent}% discount")
    else:
        final_price = price
        print(f"No discount, Item price is R {final_price}")

#  Print and capture section
print("***Please capture the item price & discount amount below***\n")
price = float(input("Item price: R "))  # capture item price
discount_percent = float(input("Item discount %: "))  # capture item discount

#  calculate_discount function call
calculate_discount(price, discount_percent)
