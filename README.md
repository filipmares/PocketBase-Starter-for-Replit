# PocketBase Starter

This is a starter template for downloading, updating, backing up, restoring and running PocketBase on [Replit](https://replit.com/), although it should run in any Linux environment. 

Note: PocketBase can also be run as a [Nix package](https://search.nixos.org/packages?channel=22.11&show=pocketbase&from=0&size=50&sort=relevance&type=packages&query=pocketbase), but generally all Nix channels tend to older versions. 
___

[PocketBase](https://pocketbase.io/) is an open source Go backend, consisting of:

- embedded database (SQLite) with realtime subscriptions
- built-in files and users management
- convenient Admin dashboard UI
- and simple REST-ish API
For documentation and examples, please visit [https://pocketbase.io/docs](https://pocketbase.io/docs).
___

## Running
Simply run the repl! The first time it runs it will download the latest version of PocketBase, then run the executable. See [main.sh](./main.sh) for more details. 

It's recommended setting the repl to [Always On](https://docs.replit.com/hosting/enabling-always-on) to keep it responsive and depending on the traffic requirements for your application also enabling [Boost](https://docs.replit.com/programming-ide/resources-panel#high-resource-usage).

## Updating
To update PocketBase, run `sh update.sh` in the Shell. This will check the locally installed version against the latest release. The local version doesn't match the latest release the new release will be downloaded and replace the local one. See [update.sh](./update.sh) for more details.

## Backing up
To back up your application, run `sh backup.sh`. This will create a backup copy using [SQLite backup](https://www.sqlite.org/backup.html) to [./backup/](./backup/). See [backup.sh](./backup.sh) for more details.

## Restoring
To restore your application from a backup, run `sh restore.sh` followed by the backup file name in [./backup/](./backup/) eg.`sh restore.sh data_2022-12-29_01-17-21.db`. This will restore the database uwsing SQLite restore to [./pb_data/data.db](./pb_data/data.db). See [restore.sh](./restore.sh) for more details.

## Acknowledgements
I merely gathered a variety of ideas from existing projects on running and managing PocketBase on Replit. There was a lot of great work by many who have gone through the trial and error of setting up PocketBase on Replit. Please check out their repls and support their work below. 

- [mlden](https://replit.com/@ml4den)
- [MarcusWeinberger](https://replit.com/@MarcusWeinberger)

