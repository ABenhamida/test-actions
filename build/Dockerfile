FROM ruby:2.6-alpine
RUN apk add --update npm

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["default"]
