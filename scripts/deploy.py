
from ape import accounts, project

def main():
    # Load the deployer account
    deployer = accounts.load("deployer_account")

    # Deploy the contract
    contract = deployer.deploy(project.MyNFT, "https://gateway.pinata.cloud/ipfs/bafkreig3qgcfi3bfcvj73rxnzpqrej4a76vbbmdwuoi3xklxrhb3n2qgza")
    print(f"Contract deployed at: {contract.address}")
