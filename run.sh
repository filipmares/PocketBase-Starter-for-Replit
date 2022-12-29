if [[ -f "pocketbase" ]]; then
  echo "Found pocketbase installed. Running..."
    ./pocketbase serve --http 0.0.0.0:8080
else
  echo "Did not find pocketbase installed. Downloading and running..."
    sh download.sh && ./pocketbase serve --http 0.0.0.0:8080
fi