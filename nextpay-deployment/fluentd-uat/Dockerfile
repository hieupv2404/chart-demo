FROM fluent/fluentd:v1.9.3-1.0

ENV TZ=Asia/Ho_Chi_Minh
# Use root account to use apk
USER root

# below RUN includes plugin as examples elasticsearch is not required
# you may customize including plugins as you wish
RUN apk add --no-cache --update --virtual .build-deps \
        sudo build-base ruby-dev tzdata \
 && gem install fluent-plugin-elasticsearch \
 && gem install elasticsearch-xpack \
 && gem install fluent-plugin-slack \
 && gem sources --clear-all \
 && apk del .build-deps \
 && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem