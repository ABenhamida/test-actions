FROM ruby:2.6-alpine

RUN apk add --update \
  build-base \
  tzdata \
  && rm -rf /var/cache/apk/*

RUN gem install -n /usr/local/bin scss_lint

ENV REVIEWDOG_VERSION=v0.9.17

RUN wget -O - -q https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh| sh -s -- -b /usr/local/bin/ ${REVIEWDOG_VERSION}

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["default"]
