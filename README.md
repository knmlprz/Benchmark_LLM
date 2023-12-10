# Polish LLM benchmark

Polish benchmark LLM is a compact yet powerful platform designed for benchmarking  in polish langue open-source large language models (LLMs)  Equipped with diverse test datasets, it facilitates rigorous and comprehensive evaluation of LLMs. This tool streamlines the process of assessing model performance, enabling researchers and developers to reliably test and share their findings in the dynamic landscape of AI and natural language processing.
# Table of Contents

### [Getting Started](#getting-started)
- [For Liunx](#for-linux-users)
- [For Windows](#for-Windows-users)

### [Run Benchamrk](#run-benchmark)
- [For Liunx](#for-linux)
- [For Windows](#for-Windows)
### [Below That ](#below-that-good-first-issue)
- [Prerequisites](#prerequisites)
- [Installing](#installing)
- [Running the Tests](#running-the-tests)
- [Deployment](#deployment)
- [Built With](#built-with)
- [Contributing](#contributing)
- [Versioning](#versioning)
- [Authors](#authors)
- [License](#license
- [Acknowledgments](#acknowledgments)

# Getting Started

This section will guide you through getting a copy of the project up and running on your local machine for development and testing purposes. Before you start, ensure you have Git installed on your system. If not, you can download and install it from [Git's official website](https://git-scm.com/).

## Prerequisites

- Git installed on your machine. 
- Docker installed for running the application in a container (optional but recommended).

## Setup Instructions

### For Linux Users

Clone the repository to get a local copy on your machine,
Change into the project directory,
Run the setup script to configure the environment.

   ```bash
   git clone https://github.com/knmlprz/Benchmark_LLM.git
   cd Benchmark_LLM
   ./set_venv.sh
   source venv/bin/activate 
   ``` 


### For Windows Users

Clone the repository to get a local copy on your machine,
Change into the project directory,
Run the setup script to configure the environment

   ```bash
git clone https://github.com/knmlprz/Benchmark_LLM.git
cd Benchmark_LLM
set_venv.bat
venv\Scripts\activate.bat
   ``` 

# Running the Benchmark

### For Linux

**First Time Setup**

Build and start the Docker containers. This step is required only once or after any changes in the Docker configuration.
```bash 
docker compose up --build
```

**Regular Usage**

Start the Docker containers without rebuilding.
```bash 
docker compose up
``` 

**Shutdown**

To stop and remove the containers, networks, and volumes, use:
```bash 
docker compose down
``` 

### For Windows

**First Time Setup**

Build and start the Docker containers. This step is required only once or after any changes in the Docker configuration.
```bash 
docker compose up --build
```
**Regular Usage**

Start the Docker containers without rebuilding.
```bash 
docker compose up
``` 

**Shutdown**

To stop and remove the containers, networks, and volumes, use:
```bash 
docker compose down
``` 


# Below That Good First Issue

<!-- ## Deployment

Add additional notes about how to deploy this on a live system.

## Built With

* [Python](https://www.python.org/) - The programming language used.
* [Poetry](https://python-poetry.org/) - Dependency Management.
* [Docker](https://www.docker.com/) - Containerization platform (if used).

## Contributing

Please read [CONTRIBUTING.md](link to CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](link to tags).

## Authors

* **Your Name** - *Initial work* - [YourUserName](link to your GitHub profile)

See also the list of [contributors](link to contributors page) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](link to LICENSE file) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc -->


