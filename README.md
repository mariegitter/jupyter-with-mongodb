
# Local MongoDB using docker-compose
This project is an example of how to use docker-compose for spinning up a development jupyter notebook service and a local MongoDB populated with development data

#### Requirements
* [Docker-compose](https://docs.docker.com/compose/install/)

#### Project Description
- [docker-compose.yml](./docker-compose.yml) is the docker-compose file where the services are defined. It is seperated in three services:
    1. mongodb: The MongoDB
    2. mongodbsetup: The service that populates the MongoDB
    3. jupyter: The service that spins up a jupyter notebook which can be used for development
- [notebooks](./notebooks) contains the jupyter notebooks
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
    docker-compose up -d
    ```
3. Now you can access the jupyter notebook service on localhost port 8888, just enter https:localhost:8888/notebooks in your browser
4. Finally, when you are done take down the services
    ```
    docker-compose down
    ```


