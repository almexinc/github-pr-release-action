FROM ruby:3.0.0-alpine3.13

RUN apk --update --no-cache upgrade && \
    apk --no-cache add git tzdata && \
    gem install --no-document git-pr-release

ADD ./entrypoint.sh /srv/pr-rerelase-action/entrypoint.sh
WORKDIR /srv/pr-rerelase-action/

ENTRYPOINT ["/srv/pr-rerelase-action/entrypoint.sh"]
