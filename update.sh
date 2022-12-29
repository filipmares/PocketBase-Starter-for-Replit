LATEST=$(curl -s https://api.github.com/repos/pocketbase/pocketbase/releases/latest \
| grep "linux" \
| grep "browser_download_url" \
| grep "amd64" \
| cut -d'/' -f8 \
| tr -d 'v')

INSTALLED=$(./pocketbase --version | cut -d' ' -f3)

echo "Latest version: $LATEST"
echo "Installed version: $INSTALLED"

if [[ "$LATEST" == "$INSTALLED" ]]; then
  echo "Already running latest version $LATEST"
else
  echo "Updating installed version from $INSTALLED to $LATEST"
  sh download.sh
fi