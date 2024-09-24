# Installing Docker and Running a Trading Bot
## On Raspberry Pi (Linux)

- Update Your Package Index: 
    ```bash
    sudo apt-get update
    ```

- Install Required Packages: 
    ```bash
        sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
    ```

- Add Docker’s Official GPG Key: 
    ```bash
    curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
    ```

- Add the Docker Repository: 
    ```bash
    echo "deb [arch=armhf] https://download.docker.com/linux/debian buster stable" | sudo tee /etc/apt/sources.list.d/docker.list
    ```

- Update Your Package Index Again: 
    ```bash
    sudo apt-get update
    ```

- Install Docker: 
    ```bash
    sudo apt-get install docker-ce
    ```

- Run the Trading Bot: 
    ```bash
    sudo docker run --rm tradingbot4
    ```

## On Windows

-Download Docker Desktop: Go to the Docker Desktop website and download the installer.

-Install Docker Desktop: Run the installer and follow the on-screen instructions. Ensure you have WSL 2 enabled if prompted.

-Open PowerShell or Command Prompt: You can do this by searching for "PowerShell" or "cmd" in the Start menu.

-Run Docker: After installation, you can start Docker Desktop. You may need to wait a moment for Docker to initialize.

-Run the Trading Bot: Use the following command: `docker run --rm rust_app_name`

## Development

- Build the Docker Image: `docker build -t rust_app_name .`

- Verify the build: `docker images`

- Run the docker container: `docker run --rm rust_app_name`

