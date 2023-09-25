#FROM ubuntu:latest
# FROM riscv64/ubuntu
FROM riscv64/alpine:edge
# FROM scratch

COPY ./iiot_gw /usr/local/bin/iiot_gw 
COPY ./iiot_gw.json /usr/local/bin/iiot_gw.json 
COPY ./iiot_hdms /usr/local/bin/iiot_hdms 
COPY ./command.sh /usr/local/bin/command.sh

ENTRYPOINT ["/bin/bash"]

CMD ["command.sh"]
