FROM nginx:alpine
# تغيير البورت لـ 8080 باش يقبله Cloud Run
RUN sed -i 's/listen       80;/listen       8080;/g' /etc/nginx/conf.d/default.conf
# وضع الـ UUID والمسار في صفحة بسيطة للتأكد
RUN echo "Server is running with UUID: df137605-475a-408e-9013-33e595c6d837 on path: /@Radwan/@tech" > /usr/share/nginx/html/index.html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
