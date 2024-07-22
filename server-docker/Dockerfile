FROM ruby:3.2.2

ENV GEM_HOME="/usr/local/bundle"
ENV PATH $GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH

WORKDIR /app
COPY . /app

RUN gem update --system
RUN gem install bundler
RUN bundle config set --local path 'vendor/bundle'
RUN bundle install

EXPOSE 3020 4003

CMD ["bundle", "exec", "rackup", "-s", "puma", "-p", "3020", "--host", "0.0.0.0", "-O", "Threads=0:16", "-O", "Verbose=true", "config.ru"]

# RUN bundle exec rackup -s puma --host 127.0.0.1 -p 3020 -O Threads=0:16 -O Verbose=true config.ru

# docker run -d --restart=unless-stopped your_image_name
