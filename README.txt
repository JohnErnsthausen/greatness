 bundle config set --local path 'vendor/bundle'
 bundle install
 bundle exec rackup -s puma --host 0.0.0.0 -p 3020 -O Threads=0:16 -O Verbose=true config.ru


 docker buildx build -t rackup-puma-sinatra .
 docker container run -it -p 3020:3020 -d --name mcba -v $(pwd):/app rackup-puma-sinatra
