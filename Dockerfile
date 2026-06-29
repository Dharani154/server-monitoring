FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y \
    bash \
    procps \
    bc \
    nginx \
    && apt-get clean

WORKDIR /app

COPY scripts/ ./scripts/
COPY reports/ ./reports/

RUN chmod +x ./scripts/*.sh

CMD ["bash", "./scripts/run_all.sh"]
