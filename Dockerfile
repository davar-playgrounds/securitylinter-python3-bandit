FROM python:3.6.8-alpine3.8
LABEL maintainer="Tejas Chandra <dark.phoenix84@gmail.com>"
RUN apk add --update bash \
    && rm -rf /var/cache/apk/*
RUN pip3 install -U setuptools
RUN pip3 install -U bandit
WORKDIR /code
VOLUME /code
COPY bandit_check.sh /bandit_check.sh
COPY bandit_configs.yml /bandit_configs.yml
RUN chmod +x /bandit_check.sh
ENTRYPOINT ["/bandit_check.sh", "/code"]
