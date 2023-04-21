# testing-foundry
Setting, testing and deploying some erc standards with foundry.
Is fast at the very least, could have simpler docs though.

### Command Cheatsheet-

```python

#initisalize up a new project in an empty dir
forge init
cp .env_template .env

#testing up your contracts
forge build
forge test

#local nodes
source .env
anvil

#depolying locally and if the env and script setup carefully, using any rpc provider
forge script script/helloWorld.s.sol:ContractScript --rpc-url --fork-url http://localhost:8545 --broadcast --verify -vvvv

forge script script/helloWorld.s.sol:ContractScript --fork-url http://localhost:8545 --broadcast --verify -vv

#calling up contract func locally
cast call ${CONTRACT_ADDRESS} "greet()(string)"

```
