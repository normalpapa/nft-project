from dotenv import load_dotenv
import os

load_dotenv()

print("Infura Project ID:", os.getenv("INFURA_PROJECT_ID"))
print("Pinata API Key:", os.getenv("PINATA_API_KEY"))
print("Private Key:", os.getenv("PRIVATE_KEY"))

