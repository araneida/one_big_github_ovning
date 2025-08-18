import os
import numpy as np
from dotenv import load_dotenv

load_dotenv()
def random_number_generator():
    secret = os.getenv('SUPER_SECRET_PHRASE')
    if secret == '1up':
        print(np.random.randint(1, 101))
    else:
        print("Access denied: invalid or missing secret phrase.")

if __name__ == "__main__":
    random_number_generator()
