FROM ruby:2.6.1
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /practice-app
WORKDIR /practice-app
COPY Gemfile /practice-app/Gemfile
COPY Gemfile.lock /practice-app/Gemfile.lock
RUN bundle install
COPY . /practice-app

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]