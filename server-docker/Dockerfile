FROM ruby:3.2.2

RUN gem install bundler

ENV GEM_HOME /usr/local/bundle
ENV BUNDLE_PATH=$GEM_HOME
ENV BUNDLE_BIN=$GEM_HOME/bin
ENV PATH $BUNDLE_BIN:$PATH

WORKDIR /app

COPY Gemfile ./

RUN bundle install

COPY . .

EXPOSE 3020 4003

CMD ["bundle", "exec", "rackup", "-s", "puma", "-p", "3020", "--host", "0.0.0.0", "-O", "Threads=0:16", "-O", "Verbose=true", "config.ru"]


