FROM alpine:latest
RUN apk add --no-cache curl bash
ENV UUID=df137605-475a-408e-9013-33e595c6d837
ENV VM_PATH=/@Radwan/@tech
CMD ["sh", "-c", "echo Server is running on $VM_PATH with UUID $UUID && sleep infinity"]
