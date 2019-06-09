From ietty/jupyter

LABEL MAINTAINER="takemi.ohama <takemi.ohama@gmail.com>"

USER root

RUN apt-get update && apt-get install -yq --no-install-recommends \
    busybox-static
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /var/spool/cron/crontabs
ENV TZ=Asia/Tokyo

CMD ["busybox", "crond", "-f", "-L", "/dev/stderr"]

