FROM mcr.microsoft.com/oss/go/microsoft/golang:1.21-cbl-mariner2.0 as BUILDER
WORKDIR /
RUN tdnf install -y git && git clone https://github.com/jeremyrickard/dalec-tools.git
WORKDIR /dalec-tools
RUN go build -o bin/dalec-tools .

FROM ubuntu:latest
COPY --from=BUILDER /dalec-tools/bin/dalec-tools .
COPY entrypoint.sh /
RUN ls -l
COPY manager.yml /github/workspace/specs/kubernetes-eraser/
ENTRYPOINT [ "/entrypoint.sh" ]
