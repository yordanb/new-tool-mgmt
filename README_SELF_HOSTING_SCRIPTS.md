# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin


# Get the code
git clone --depth 1 https://github.com/supabase/supabase

# Go to the docker folder
cd supabase/docker

# Copy the fake env vars
cp .env.example .env

# Pull the latest images
docker compose pull

# Start the services (in detached mode)
docker compose up -d

docker compose ps

sudo apt install xclip -y

PUBLIC_IP=$(curl -s ifconfig.me) && ANON_KEY=$(grep ANON_KEY .env | cut -d '=' -f2) && echo "ANON_KEY: $ANON_KEY" && echo "http://$PUBLIC_IP:8000" && echo -n "$ANON_KEY" | xclip -selection clipboard


echo "1. Access the dashboard at http://localhost:8000"
echo "2. Don't forget to open the ports in your firewall"
echo "3. Default username is: supabase"
echo "4. Default password is: this_password_is_insecure_and_should_be_updated"
echo "5. your url is: http://localhost:8000"
echo "6. your anon key can be found on nano docker/.env"