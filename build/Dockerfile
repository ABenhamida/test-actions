FROM ruby:2.6-alpine
RUN apk add --update npm
RUN ruby -v
RUN npm -v
RUN node -v
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["default"]
