FROM alpine:3.14.1

RUN apk update && apk --no-cache add \
      py3-pip \
      python3 &&\
    pip3 install --upgrade \
      awscli

ENV KEY=,SECRET=,REGION=,BUCKET=,BUCKET_PATH=/,CRON_SCHEDULE="0 1 * * *",PARAMS=

VOLUME ["/data"]

ADD *.sh /
RUN chmod +x /*.sh

ENTRYPOINT ["/start.sh"]
CMD [""]