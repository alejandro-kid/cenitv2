FROM ghcr.io/cenit-io/cenit:latest

COPY application.docker.yml .
RUN env.sh

CMD ["bundle", "exec", "unicorn_rails", "-c", "config/unicorn.rb"]
