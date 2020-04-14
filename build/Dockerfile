FROM ruby:2.6-alpine
RUN apk add --update npm
RUN gem install -n /usr/local/bin scss_lint
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["default"]
