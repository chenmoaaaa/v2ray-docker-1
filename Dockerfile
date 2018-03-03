FROM tutum/ubuntu:trusty
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN mkdir /v2ray/
ADD v2ray /v2ray/v2ray
ADD v2ctl /v2ray/v2ctl
RUN chmod +x /v2ray/v2ray \
	&& chmod +x /v2ray/v2ctl
ADD config.json /v2ray/config.json
RUN /v2ray/v2ray --config=/v2ray/config.json
EXPOSE 443