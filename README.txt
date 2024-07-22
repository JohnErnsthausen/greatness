 bundle config set --local path 'vendor/bundle'
 bundle install
 bundle exec rackup -s puma --host 0.0.0.0 -p 3020 -O Threads=0:16 -O Verbose=true config.ru
