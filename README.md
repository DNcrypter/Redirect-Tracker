
# Redirect-Tracker

Designed to identify 🔎 open redirect vulnerabilities🪲 which can be chained 🔗⚓ with other vulnerabilities. this tool leverages asynchronous operations that reduce scan time by **80%**, significantly enhancing its eficiency.⚓⚓


[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
        [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue)](https://www.linkedin.com/in/nikhil--chaudhari/)
        [![Medium](https://img.shields.io/badge/Medium-Writeups-black)](https://medium.com/@nikhil-c)

![Redirect-Tracker](https://github.com/DNcrypter/Redirect-Tracker/static/Redirect-Tracker.png?raw=true)

## Install
 ### clone the repository
```sh
git clone https://github.com/DNcrypter/Redirect-Tracker.git
```
 ### move to directory
```sh 
cd Redirect-Tracker
```
### Run setup.sh
```sh
sudo chmod +x setup.sh
./setup.sh

```

## Usage

You can run the script from the command line with these options:

```sh
Redirect-Tracker [-p payloads] [-k keyword] [-c concurrency] -v [verbose]
```

- `-p`, `--payloads`: File containing a list of payloads. If not specified, a hardcoded list is used.
- `-k`, `--keyword`: Keyword in URLs to replace with payload. Default is "FUZZ".
- `-c`, `--concurrency`: Number of concurrent tasks. Default is 50.

**Note**:- The script takes a list of URLs as input. Each URL must include the keyword defined by the -k option. The script substitutes the keyword with each payload and tries to fetch the modified URL.

**Example usage:**

```sh
cat list_of_urls.txt |  Redirect-Tracker -p payloads.txt -k "FUZZ" -c 100
```


 **List of URLs should look like below:**


```
$>> cat list_of_urls.txt

https://admin.xyz.com/logout?redirect=FUZZ
https://auth.xyz.com/auth/realms/sonatype/protocol/openid-connect/logout?redirect_uri=test
https://xyz.com/php?test=baz&foo=bar
```

This example reads URLs from the file `list_of_urls.txt`, replaces all the values of the parameters to `FUZZ` (if `--keyword` is not supplied), then again replaces the keyword `FUZZ` or the supplied keyword with each payload from `payloads.txt`, and fetches each URL concurrently, with a maximum of 50 concurrent tasks.



## Dependencies🔗

The script uses the following libraries:

- `argparse` for handling command-line arguments.
- `aiohttp` for making HTTP requests.
- `tqdm` for displaying progress.
- `concurrent.futures` for handling concurrent tasks.
- `asyncio` for managing asynchronous tasks.

All dependencies are already installed using setup.sh. If any error occurs use below cmd:
```bash
pip install requirements.txt
```
### Disclaimer:🔎🔎
You can use this script to check for open redirects in web applications. However, you should only use it on systems that you have been given explicit permission to test.

## ⚓Contributions:
Pull requests are always welcome as they help us grow as a community.
