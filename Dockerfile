FROM gradle:7.4.2-jdk11 AS builder

WORKDIR /app

RUN apt update && apt install -y git

COPY "build_qsign.sh" "./build_qsign.sh"

RUN ./build_qsign.sh

FROM openjdk:11-jre-slim

WORKDIR /app

COPY --from=builder /app/unidbg-fetch-qsign/build/libs/unidbg-fetch-qsign-*-all.jar ./unidbg-fetch-qsign-all.jar
COPY "txlib" ./txlib
COPY "entry_point.sh" "./entry_point.sh"

ENTRYPOINT [ "./entry_point.sh" ]
