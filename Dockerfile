FROM ruby:2.7.0
ENV BUNDLER_VERSION=2.3.11
RUN apt update && apt install -y --no-install-recommends build-essential ruby-dev  git  curl && rm -rf /var/lib/apt/lists/*
RUN gem install bundler -v 2.3.11
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle check || bundle install
COPY . ./
RUN chmod +x ./entrypoints/docker-entrypoint.sh
ENTRYPOINT ["./entrypoints/docker-entrypoint.sh"]

