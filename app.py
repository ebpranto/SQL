import sys
from dbhelper import DBhelper

class Flipkart:

    def __init__(self):
        self.db = DBhelper()
        # connect to the database
        self.manu()

    def manu(self):
        user_input = input("""
        1. Enter 1 to register
        2. Enter 2 to login
        3. Enter else to leave
        """)

        if user_input == '1':
            self.registration()

        elif user_input == '2':
            self.login()

        else:
            sys.exit(1000)

    def login_menu(self):
        input("""
        1. Enter 1 to see profile
        2. Enter 2 to edit profile
        3. Enter 3 to delete profile
        4. Enter 4 to logout
        """)

    def registration(self):
        name = input("Enter your name:")
        email = input('Enter your email:')
        password = input('Enter your password:')

        response = self.db.register(name, email, password)

        if response:
            print("Registration Successful")

        else:
            print("Registration Failed")

        self.manu()

    def login(self):

        email = input("Enter your email:")
        password = input("Enter your password")

        data = self.db.search(email, password)

        if len(data) == 0:
            print("Incorrect email or password")
            self.login()

        else:
            print('Hello', data[0][1])
            self.login_menu()

obj = Flipkart()

