FROM ghcr.io/cenit-io/cenit:latest

WORKDIR /var/www/cenit
COPY application.docker.yml .
RUN /var/www/cenit/env.sh

CMD ["bundle", "exec", "unicorn_rails", "-c", "config/unicorn.rb"]
