FROM ruby:2.6-alpine

ADD ./bin/* /usr/local/bin/
ADD ./entry.sh /

RUN gem install aliyunsdkcore
RUN set -ex \
  && gem install aliyunsdkcore \
  && chmod a+x /usr/local/bin/* \
  && chmod a+x /entry.sh

ENTRYPOINT [ "/entry.sh" ]
