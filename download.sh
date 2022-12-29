# download latest pocketbase (https://pocketbase.io)
# thanks to https://gist.github.com/steinwaywhw/a4cd19cda655b8249d908261a62687f8
curl -s https://api.github.com/repos/pocketbase/pocketbase/releases/latest \
| grep "linux" \
| grep "browser_download_url" \
| grep "amd64" \
| cut -d : -f 2,3 \
| tr -d \" \
| xargs wget -q -O pocketbase.zip 

unzip pocketbase.zip "pocketbase" -o
rm pocketbase.zip