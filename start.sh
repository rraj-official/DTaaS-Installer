# Step 6: Run docker-compose to bring up the containers
cd DTaaS/deploy/docker
echo "Running docker-compose to bring up the containers..."
sudo docker-compose -f compose.local.yml --env-file .env.local up -d
if [ $? -ne 0 ]; then
  echo "Failed to start Docker containers. Exiting..."
  exit 1
fi

# Step 7: Open localhost in default browser
echo "Opening localhost in your default browser..."
xdg-open http://localhost || echo "Failed to open browser. You can visit http://localhost manually."

echo "Setup completed successfully!"