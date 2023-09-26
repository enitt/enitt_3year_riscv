FROM riscv64/alpine:edge as builder

COPY ./iiot_gw /usr/local/bin/iiot_gw 
COPY ./iiot_gw.json /usr/local/bin/iiot_gw.json 
COPY ./iiot_hdms /usr/local/bin/iiot_hdms 
COPY ./command.sh /usr/local/bin/command.sh

FROM riscv64/alpine:edge

COPY --from=builder /usr/local/bin/iiot_gw /usr/local/bin/iiot_gw
COPY --from=builder /usr/local/bin/iiot_gw.json /usr/local/bin/iiot_gw.json
COPY --from=builder /usr/local/bin/iiot_hdms /usr/local/bin/iiot_hdms
COPY --from=builder /usr/local/bin/command.sh /usr/local/bin/command.sh

ENTRYPOINT ["/bin/bash"]

CMD ["command.sh"]
