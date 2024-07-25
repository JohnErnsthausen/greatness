# Greatness Application

> Description ....


**New Setup:**

---


### Clone

- Clone this repo to your local machine using `https://github.com/JohnErnsthausen/greatness.git`

### Setup

- Clone repo `git clone link to repo`.
- `cd greatness/server-docker`.
- Generate SSL for local setup modify few words according to your need and run this command it will generate 2 files

`openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout apache/certs/localhost.key -out apache/certs/localhost.crt -subj "/CN=localhost"`

-RUN `docker-compose up`
You can even go with a --build flag to build it on every command.

browse to `http://localhost:3020/`



---
## OLD Setup
 bundle config set --local path 'vendor/bundle'
 bundle install
 bundle exec rackup -s puma --host 0.0.0.0 -p 3020 -O Threads=0:16 -O Verbose=true config.ru
