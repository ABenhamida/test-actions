FROM ruby:2.6-alpine
RUN apk add --update npm

  RUN apk add --update \
  build-base \
  tzdata \
  && rm -rf /var/cache/apk/*

RUN gem install -n /usr/local/bin scss_lint
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["default"]
