
# Local MongoDB using docker-compose
This project is an example of how to use docker-compose for spinning up a development jupyter notebook service and a local MongoDB populated with development data

#### Requirements
* [Docker-compose](https://docs.docker.com/compose/install/)

#### Project Description
- [docker-compose.yml](./docker-compose.yml) is the docker-compose file where the services are defined. It is seperated in three services:
    1. mongodb: The MongoDB
    2. mongodbsetup: The service that populates the MongoDB
    3. jupyter: The service that spins up a jupyter notebook which can be used for development
- [notebooks/pymongo_examples.ipynb](./notebooks/pymongo_examples.ipynb) is a jupyter notebook with examples on how you can use pymongo to ready and work with the data from your MongoDB
- [data](./data) contains sample data for the MongoDB
- [src/load_mongo_data.sh](./src/load_mongo_data.sh) is the bash script for importing data from [data/](./data) into the MongoDB
- [.env](./.env) is the place to specify your environment variables for the docker containers

## How to get started?
The docker-compose file ..

1. First build the image 
    ```
    docker-compose build
    ```
2. Then start the service (-d flag detaches the container and makes it run in the background)
    ```
    docker-compose up
    ```
3. Now you can access the jupyter notebook service on localhost port 8888, just copy paste the url you see in the terminal ```http://127.0.0.1:8888/?token=..``` into your browser
4. Finally, when you are done take down the services
    ```
    docker-compose down
    ```


