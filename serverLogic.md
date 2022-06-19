
#SERVER HOSTING LOGIC

During the first year of release, the system needs to have different intance providers (must be from different infrastructure as well)

- Server 1: Transaction Server 
This server will run an API receiving and handling  transactions. It will interpret transactions and provide a single code (hash) This service only validates data and generates the hash, does not store anything. The database is only to handle request and responses. This will also serve as the validation of the transaction process

- Server 2: Production Environment 1

Will run environment for 3 days then run script to start next server7 && relabeled to last server when time is up && **


- Server 3: Production Environment 2
Will run environment for 6 days then run script to start next server7 && relabeled to last server when time is up && **

- Server 4: Production Environment 3
Will run environment for 9 days then run script to start next server7 && relabeled to last server when time is up && **

** After 1 year the script will run the migration to client hosted version. Users must agree to host the service in order to use. (TBD)

- Server 5:  Database (accountDatabase)

- Server 6:  Database  (transactionDatabase) transactions are destroyed 90 days after completion 

- Server 7:  Database (publicDatabase) will record public relevant data from each transaction to be used for publicFundReport

- Server 8: Production Database (publicDatabase)

- Server 9: Database (projectDatabase)

The goal is to develop a self hosted server by each client(Users) and deploy after the first year. 