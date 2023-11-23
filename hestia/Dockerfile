FROM docker:latest
RUN apk add bash
COPY ./hestia /app/hestia
COPY ./.env /app/.env
COPY ./gitlab_registry_login.sh /app/gitlab_registry_login.sh
RUN ./app/gitlab_registry_login.sh
WORKDIR /app
ENTRYPOINT ["/app/hestia"]
