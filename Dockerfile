FROM alpine:latest
RUN apk add --no-cache curl bash
ENV UUID=df137605-475a-408e-9013-33e595c6d837
ENV VM_PATH=/@Radwan/@tech
ENV PORT=8080
RUN curl -L -H "Cache-Control: no-cache" -o /xray.sh https://raw.githubusercontent.com/carltonf/gcloud-run-vless/main/xray.sh && chmod +x /xray.sh
CMD ["/bin/bash", "/xray.sh"]
