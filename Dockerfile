FROM fluent/fluentd
RUN apk add --update --virtual .build-deps \
        sudo build-base ruby-dev \
    && gem install fluent-plugin-elasticsearch fluent-plugin-geoip \
    && gem sources --clear-all \
    && apk del .build-deps \
    && rm -rf /var/cache/apk/* /home/fluent/.gem/ruby/2.3.0/cache/*.gem
